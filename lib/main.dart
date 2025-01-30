import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/navigation/app_navigation.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => NavigationCubit()),
    BlocProvider(create: (_) => RecordBloc()),
    BlocProvider(create: (_) => ListenRecordBloc()),
    BlocProvider(create: (_) => RecordStatusBloc())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF6F6F6)),
        dividerTheme: const DividerThemeData(color: Colors.transparent),
        useMaterial3: true,
      ),
      routerConfig: AppRouter().createRouter(context),
    );
  }
}
