import 'package:go_router/go_router.dart';

import '../screens/formNumPedido.dart';
import '../screens/formPage.dart';
import '../screens/homePage.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(
        title: 'Silimed',
      ),
    ),
    GoRoute(
      path: '/formPage',
      builder: (context, state) {
        final acao = state.queryParameters['acao'] ??
            'teste'; // Valor padrão 'teste' se for nulo
        return FormPage(acao: acao);
      },
    ),
    GoRoute(
      path: '/formNumPedido',
      builder: (context, state) => const FormNumPedido(),
    ),
  ],
);
