import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:memory_box_avada/sources/auth_service.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:memory_box_avada/sources/storage_service.dart';

final GetIt locator = GetIt.instance;
// final FirebaseAuth _auth = FirebaseAuth.instance;
void setupLocator() {
  locator.registerLazySingleton<StorageService>(() => StorageService());
  locator.registerLazySingleton<FirestoreService>(() => FirestoreService());
  locator.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  locator.registerLazySingleton<AuthService>(() => AuthService());
}
