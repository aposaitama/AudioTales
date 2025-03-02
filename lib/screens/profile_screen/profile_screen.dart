import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_event.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_event.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/widgets/custom_text_field.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_event.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_state.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/dialog_button_otp.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/show_delete_profile.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

class ProfileScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const ProfileScreen({super.key, required this.scaffoldKey});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController userNameController;
  late TextEditingController userPhoneController;
  late TextEditingController newUserPhoneController;
  final maskFormatter = MaskTextInputFormatter(
    mask: '_ _ _ _ _ _',
    filter: {"_": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  final isAnonymous = locator<FirebaseAuth>().currentUser?.isAnonymous;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    userPhoneController = TextEditingController();
    newUserPhoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserBlocState>(
      listener: (context, state) {
        userNameController.text = state.userModel?.userName ?? '';
        userPhoneController.text = state.userModel?.phoneNumber ?? '';
        newUserPhoneController.text = state.newUserPhoneNum;
      },
      child: Scaffold(
        appBar: AppBar(
          title: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Профиль\n',
              style: AppTextStyles.appBarText,
              children: <TextSpan>[
                TextSpan(
                  text: 'Твоя частичка',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    letterSpacing: 1,
                    fontFamily: 'TTNorms',
                  ),
                ),
              ],
            ),
          ),
          toolbarHeight: 65,
          backgroundColor: AppColors.purpleColor,
          leading: Builder(
            builder: (context) => Align(
              alignment: Alignment.topLeft,
              child: BlocBuilder<UserBloc, UserBlocState>(
                builder: (context, state) {
                  if (!state.editingMode) {
                    return IconButton(
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/drawer.svg',
                          height: 24.0,
                          width: 24.0,
                        ),
                      ),
                      onPressed: () =>
                          widget.scaffoldKey.currentState?.openDrawer(),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 52.0,
                      width: 52.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: IconButton(
                        iconSize: 36.0,
                        icon: SvgPicture.asset(
                          'assets/icons/Arrow_Left_Circle.svg',
                          height: 36.0,
                          width: 36.0,
                        ),
                        onPressed: () => context.read<UserBloc>().add(
                              const UserEditMode(),
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        body: BlocListener<UserBloc, UserBlocState>(
          listener: (context, state) {
            if (state.codeStatus == UserCodeSentStatus.successfull) {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.all(30),
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Введіть код підтвердження',
                          style: AppTextStyles.titleRed,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 16),
                        CustomTextField(
                          maskFormatted: maskFormatter,
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            context.read<UserBloc>().add(
                                  SendOTPUserBlocEvent(
                                    maskFormatter.getUnmaskedText(),
                                  ),
                                );
                            Navigator.pop(context);
                          },
                          child: const DialogButtonOtp(
                            text: 'Підтвердити',
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
          child: BlocBuilder<UserBloc, UserBlocState>(
            builder: (context, state) {
              bool isPhoneNumberMatching =
                  userPhoneController.text == state.userModel?.phoneNumber;

              return Column(
                children: [
                  Stack(
                    children: [
                      const CustomProfileTopClipPath(),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 228.0,
                                  height: 228.0,
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(24),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: state.editingMode
                                      ? state.newUserImagePath != '' &&
                                              state.newUserImagePath.isNotEmpty
                                          ? ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Image.file(
                                                File(state.newUserImagePath),
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                          : _buildCachedOrPlaceholder(
                                              state.userModel?.userPhoto,
                                            )
                                      : _buildCachedOrPlaceholder(
                                          state.userModel?.userPhoto,
                                        ),
                                ),
                                if (state.editingMode)
                                  GestureDetector(
                                    onTap: () {
                                      context.read<UserBloc>().add(
                                            const ChoosePhotoEventUserBoc(),
                                          );
                                    },
                                    child: SvgPicture.asset(
                                      'assets/icons/Edit_Photo.svg',
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  !state.editingMode
                      ? Text(
                          state.userModel?.userName ?? 'Користувач',
                          style: const TextStyle(
                            color: AppColors.fontColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                            letterSpacing: 1,
                            fontFamily: 'TTNorms',
                          ),
                        )
                      : TextField(
                          autofocus: true,
                          textAlign: TextAlign.center,
                          controller: userNameController,
                          style: const TextStyle(
                            color: AppColors.fontColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                            letterSpacing: 1,
                            fontFamily: 'TTNorms',
                          ),
                          decoration: const InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 0.0,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  if (!isAnonymous!)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 62.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(41),
                                    color: const Color.fromARGB(
                                      212,
                                      255,
                                      255,
                                      255,
                                    ),
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        if (state.editingMode) {}
                                      },
                                      child: !state.editingMode
                                          ? Text(
                                              '${state.userModel?.phoneNumber ?? 0}',
                                              style: const TextStyle(
                                                color: AppColors.fontColor,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                                height: 1.0,
                                                letterSpacing: 1,
                                                fontFamily: 'TTNorms',
                                              ),
                                            )
                                          : TextField(
                                              maxLength: 13,
                                              textAlign: TextAlign.center,
                                              controller: newUserPhoneController
                                                      .text.isEmpty
                                                  ? userPhoneController
                                                  : newUserPhoneController,
                                              style: const TextStyle(
                                                color: AppColors.fontColor,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                                height: 1.0,
                                                letterSpacing: 1,
                                                fontFamily: 'TTNorms',
                                              ),
                                              onChanged: (value) {
                                                setState(() {
                                                  value =
                                                      userPhoneController.text;
                                                });
                                              },
                                              decoration: const InputDecoration(
                                                counterText: '',
                                                isDense: true,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  horizontal: 0.0,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.read<UserBloc>().add(
                                          const UserEditMode(),
                                        );
                                  },
                                  child: !state.editingMode
                                      ? const Text(
                                          'Редактировать',
                                          style: TextStyle(
                                            color: AppColors.fontColor,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            height: 1.0,
                                            letterSpacing: 1,
                                            fontFamily: 'TTNorms',
                                          ),
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            if (isPhoneNumberMatching) {
                                              context.read<UserBloc>().add(
                                                    SaveInfoEventUserBoc(
                                                      userNameController.text,
                                                      userPhoneController.text,
                                                    ),
                                                  );
                                              context.read<UserBloc>().add(
                                                    const UserEditMode(),
                                                  );
                                            } else if (!isPhoneNumberMatching) {
                                              context.read<UserBloc>().add(
                                                    SendCodeUserBlocEvent(
                                                      userPhoneController.text,
                                                    ),
                                                  );
                                              if (state.codeStatus ==
                                                  UserCodeSentStatus
                                                      .successfull) {}
                                            }
                                          },
                                          child: Text(
                                            isPhoneNumberMatching
                                                ? 'Сохранить'
                                                : 'Отправить смс',
                                            style: const TextStyle(
                                              color: AppColors.fontColor,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              height: 1.0,
                                              letterSpacing: 1,
                                              fontFamily: 'TTNorms',
                                            ),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                            if (!state.editingMode)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 32.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocBuilder<AuthBloc, AuthBlocState>(
                                      builder: (context, state) {
                                        return GestureDetector(
                                          onTap: () {
                                            context.read<AuthBloc>().add(
                                                  const LogoutRequestedAuthBlocEvent(),
                                                );
                                            context
                                                .read<RegisterScreenBloc>()
                                                .add(
                                                  const LogOutRegisterScreenBlocEvent(),
                                                );
                                            context.go('/bypass');
                                          },
                                          child: const Text(
                                            'Выйти из приложения',
                                            style: AppTextStyles.subtitle,
                                          ),
                                        );
                                      },
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        ShowDeleteProfile.show(
                                          'Все аудиофайлы исчезнут и восстановить аккаунт будет невозможно',
                                          context,
                                          onYes: () {
                                            context.read<AuthBloc>().add(
                                                  const DeleteUserAuthBlocEvent(),
                                                );
                                            context.go('/bypass');
                                          },
                                        );
                                      },
                                      child: const Text(
                                        'Удалить аккаунт',
                                        style: AppTextStyles.subtitleRed,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  if (isAnonymous!)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            BlocBuilder<AuthBloc, AuthBlocState>(
                              builder: (context, state) {
                                return GestureDetector(
                                  onTap: () {
                                    context.read<AuthBloc>().add(
                                          const LogoutRequestedAuthBlocEvent(),
                                        );
                                    context.read<RegisterScreenBloc>().add(
                                          const LogOutRegisterScreenBlocEvent(),
                                        );
                                    context.go('/bypass');
                                  },
                                  child: const Text(
                                    'Выйти из приложения',
                                    style: AppTextStyles.subtitle,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget _buildCachedOrPlaceholder(String? imageUrl) {
  if (imageUrl != null && imageUrl.isNotEmpty) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) =>
            const Icon(Icons.person_off_outlined, size: 50),
      ),
    );
  } else {
    return const Icon(Icons.person, size: 100);
  }
}
