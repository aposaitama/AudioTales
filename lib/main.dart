import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/navigation/app_navigation.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavigationCubit()),
        BlocProvider(create: (_) => RecordBloc()),
        BlocProvider(create: (_) => RecordStatusBloc()),
        BlocProvider(create: (_) => AudioRecordsScreenBloc()),
        BlocProvider(create: (_) => CollectionBloc()),
      ],
      child: const MyApp(),
    ),
  );
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
