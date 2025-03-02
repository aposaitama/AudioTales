import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_event.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:memory_box_avada/models/user_model.dart';
import 'package:memory_box_avada/sources/storage_service.dart';

class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  final FirebaseAuth _auth = locator<FirebaseAuth>();
  final StorageService _firebaseStorageService = locator<StorageService>();
  final ImagePicker _picker = ImagePicker();
  StreamSubscription<User?>? _authSubscription;
  StreamSubscription<UserModel?>? _userSubscription;

  UserBloc() : super(const UserBlocState()) {
    on<SubscribeToAuthChanges>(_onSubscribeToAuthChanges);
    on<UserUpdated>(_onUserUpdated);
    on<UserLoggedOut>(_onUserLoggedOut);
    on<UserEditMode>(_editMode);
    on<ChoosePhotoEventUserBoc>(_choosePhoto);
    on<SaveInfoEventUserBoc>(_saveData);
    on<SendCodeUserBlocEvent>(_sentCode);
    on<SendOTPUserBlocEvent>(_sentOTP);

    add(const SubscribeToAuthChanges());
  }

  Future<void> _sentCode(
    SendCodeUserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    final completer = Completer<void>();

    await _auth.verifyPhoneNumber(
      phoneNumber: event.newUserPhone,
      verificationCompleted: (PhoneAuthCredential credential) {
        if (!completer.isCompleted) completer.complete();
      },
      verificationFailed: (FirebaseAuthException e) {
        if (!completer.isCompleted) completer.complete();
      },
      codeSent: (verificationId, forceResendingToken) {
        if (!completer.isCompleted) completer.complete();
        if (!emit.isDone) {
          emit(
            state.copyWith(
              codeStatus: UserCodeSentStatus.successfull,
              verigicationId: verificationId,
              newUserPhoneNum: event.newUserPhone,
            ),
          );
        }
      },
      codeAutoRetrievalTimeout: (verificationId) {
        print('retrieval');
        if (!completer.isCompleted) completer.complete();
      },
    );

    await completer.future;
  }

  Future<void> _sentOTP(
    SendOTPUserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: state.verigicationId,
      smsCode: event.otpCode,
    );
    try {
      await _auth.currentUser!.updatePhoneNumber(credential);

      emit(
        state.copyWith(
          codeStatus: UserCodeSentStatus.initial,
          userModel:
              state.userModel?.copyWith(phoneNumber: state.newUserPhoneNum),
        ),
      );
      await _firebaseFirestoreService.updateUserData(state.userModel!);
      emit(
        state.copyWith(
          newUserPhoneNum: '',
        ),
      );
    } catch (e) {
      emit(state.copyWith(
          codeStatus: UserCodeSentStatus.initial, newUserPhoneNum: '',),);
    }
  }

  Future<void> _saveData(
    SaveInfoEventUserBoc event,
    Emitter<UserBlocState> emit,
  ) async {
    if (state.newUserImagePath.isNotEmpty) {
      var imageUrl =
          await _firebaseStorageService.uploadImage(state.newUserImagePath);
      emit(
        state.copyWith(
          userModel: state.userModel?.copyWith(
            userName: event.userName,
            userPhoto: imageUrl,
          ),
        ),
      );
    }
    emit(
      state.copyWith(
        userModel: state.userModel?.copyWith(
          userName: event.userName,
        ),
      ),
    );
    await _firebaseFirestoreService.updateUserData(state.userModel!);
    emit(
      state.copyWith(
        newUserImagePath: '',
      ),
    );
  }

  Future<void> _choosePhoto(
    ChoosePhotoEventUserBoc event,
    Emitter<UserBlocState> emit,
  ) async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    emit(
      state.copyWith(
        newUserImagePath: pickedFile.path,
      ),
    );
  }

  Future<void> _editMode(
    UserEditMode event,
    Emitter<UserBlocState> emit,
  ) async {
    if (state.editingMode) {
      emit(
        state.copyWith(
          editingMode: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          editingMode: true,
        ),
      );
    }
  }

  void _onSubscribeToAuthChanges(
    SubscribeToAuthChanges event,
    Emitter<UserBlocState> emit,
  ) {
    _authSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user == null) {
          add(const UserLoggedOut());
        } else {
          _subscribeToUserData(user.uid);
        }
      },
    );
  }

  void _subscribeToUserData(String userId) {
    _userSubscription?.cancel();
    _userSubscription = _firebaseFirestoreService.getUserStream(userId).listen(
      (userModel) {
        if (userModel != null) {
          add(UserUpdated(userModel));
        }
      },
    );
  }

  void _onUserUpdated(
    UserUpdated event,
    Emitter<UserBlocState> emit,
  ) {
    emit(state.copyWith(userModel: event.userModel, isLoading: false));
  }

  void _onUserLoggedOut(
    UserLoggedOut event,
    Emitter<UserBlocState> emit,
  ) {
    _userSubscription?.cancel();
    emit(const UserBlocState(isLoading: false, userModel: null));
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }
}
