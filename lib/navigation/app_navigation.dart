import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/audio_records_screen/audio_records_screen.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/register_screen_enter_code.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/register_screen_enter_num.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/register_screen_welcome.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/add_collection.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/choose_audio_records.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/choose_several_screen/choose_several_screen.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/info_collection_screen.dart';
import 'package:memory_box_avada/screens/collection_screen/collection_screen.dart';
import 'package:memory_box_avada/screens/home_screen/home_screen.dart';
import 'package:memory_box_avada/screens/profile_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:memory_box_avada/screens/profile_screen/profile_screen.dart';
import 'package:memory_box_avada/screens/record_screen/record_screen.dart';
import 'package:memory_box_avada/screens/root_screen/root_screen.dart';
import 'package:memory_box_avada/screens/welcome_screen/welcome_screen_new_user.dart';

class AppRouter {
  GoRouter createRouter(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return GoRouter(
      // initialLocation: '/home',
      initialLocation: '/collection',
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => RootScreen(
              navigationShell: navigationShell, scaffoldKey: scaffoldKey),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: '/home',
                    builder: (context, state) {
                      return HomeScreen(scaffoldKey: scaffoldKey);
                    }),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/collection',
                  builder: (context, state) => const CollectionScreen(),
                  routes: [
                    GoRoute(
                      path: '/add',
                      builder: (context, state) => AddCollection(),
                      routes: [
                        GoRoute(
                          path: '/choose',
                          builder: (context, state) => ChooseAudioRecords(),
                        )
                      ],
                    ),
                    GoRoute(
                        path: '/info',
                        builder: (context, state) =>
                            const InfoCollectionScreen(),
                        routes: [
                          GoRoute(
                            path: '/choose',
                            builder: (context, state) =>
                                const ChooseSeveralScreen(),
                          )
                        ])
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/record',
                  builder: (context, state) => RecordScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/audio_records',
                  builder: (context, state) =>
                      AudioRecordsScreen(scaffoldKey: scaffoldKey),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: '/profile',
                    builder: (context, state) =>
                        ProfileScreen(scaffoldKey: scaffoldKey),
                    routes: [
                      GoRoute(
                        path: 'edit',
                        builder: (context, state) =>
                            EditProfileScreen(scaffoldKey: scaffoldKey),
                      ),
                    ]),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/welcome_new',
          builder: (context, state) => const WelcomeScreenNewUser(),
        ),
        GoRoute(
          path: '/register_num',
          builder: (context, state) => const RegisterScreenEnterNum(),
        ),
        GoRoute(
          path: '/register_code',
          builder: (context, state) => const RegisterScreenEnterCode(),
        ),
        GoRoute(
          path: '/register_welcome',
          builder: (context, state) => const RegisterScreenWelcome(),
        ),
      ],
    );
  }
}
