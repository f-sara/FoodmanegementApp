import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:work1/screen/food/kaioki.dart';
import 'package:work1/screen/food/kittin.dart';
import 'package:work1/screen/food/reizouko.dart';
import 'package:work1/screen/food/syokutaku.dart';
import 'firebase_options.dart';
import 'package:work1/screen/iconlist/foodlist.dart';
import 'package:work1/screen/home.dart';
import 'package:work1/screen/iconlist/genrelist.dart';
import 'package:work1/screen/genre/genre_add.dart';
import 'package:work1/screen/food/food_add.dart';
import 'package:work1/screen/start.dart';
import 'package:go_router/go_router.dart';

main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final app = App();
  runApp(app);
}

// アプリ全体
class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/home',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: '/genre',
        builder: (context, state) => const Genre(),
      ),
      GoRoute(
        path: '/genre_a',
        builder: (context, state) => const GenreAdd(),
      ),
      GoRoute(
        path: '/start',
        builder: (context, state) => const Start(),
      ),
      GoRoute(
        path: '/foodlist',
        builder: (context, state) => const Foodlist(),
      ),
      GoRoute(
        path: '/food_a',
        builder: (context, state) => const FoodAdd(),
      ),
      GoRoute(
        path: '/0',
        builder: (context, state) => const Reizouko(),
      ),
      GoRoute(
        path: '/1',
        builder: (context, state) => const Kittin(),
      ),
      GoRoute(
        path: '/2',
        builder: (context, state) => const Syokutaku(),
      ),
      GoRoute(
        path: '/3',
        builder: (context, state) => const Kaioki(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}