import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/firebase_options.dart';
import 'package:memory_box_avada/navigation/app_navigation.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavigationCubit()),
        BlocProvider(create: (_) => UserBloc()),
        BlocProvider(create: (_) => HomeScreenBloc()),
        BlocProvider(create: (_) => RecordStatusBloc()),
        BlocProvider(create: (_) => AudioRecordsScreenBloc()),
        BlocProvider(create: (_) => CollectionBloc()),
        BlocProvider(create: (_) => MiniPlayerBloc()),
        BlocProvider(create: (_) => InfoCollectionBloc()),
        BlocProvider(create: (_) => RecentlyDeletedBloc()),
        BlocProvider(create: (_) => AuthBloc()),
        BlocProvider(create: (_) => ListenRecordBloc()),
        BlocProvider(create: (_) => RegisterScreenBloc()),
        BlocProvider(create: (_) => SearchBloc()),
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
      builder: BotToastInit(),
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF6F6F6)),
        dividerTheme: const DividerThemeData(color: Colors.transparent),
        useMaterial3: true,
      ),
      routerConfig: AppRouter().createRouter(context),
    );
  }
}
