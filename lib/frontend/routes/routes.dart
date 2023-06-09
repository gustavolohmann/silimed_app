import 'package:go_router/go_router.dart';

import '../screens/formPage.dart';
import '../screens/homePage.dart';


final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(title: 'Silimed',),
      ),
      GoRoute(
        path: '/formPage',
        builder: (context, state) => const FormPage(),
      ),
    ],
);