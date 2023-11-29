import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  /// The route configuration.
  static final GoRouter _router = GoRouter(
      initialLocation: '/',
      navigatorKey: _rootNavigatorKey,
      redirect: (context, state) async {
        return null;
      },
      //navigatorKey: GlobalKey<NavigatorState>(),
      debugLogDiagnostics: true,
      routes: routers);

  static GoRouter get router => _router;
}

List<RouteBase> get routers {
  return [
    // GoRoute(
    //     name: 'splash',
    //     path: '/',
    //     builder: (BuildContext context, GoRouterState state) {
    //       return const SplashPage();
    //     }),

    // ///AUTHENTICATION
    // GoRoute(
    //     name: 'login',
    //     path: RouterPath.login,
    //     builder: (BuildContext context, GoRouterState state) {
    //       return LoginPage();
    //     },
    //     routes: <RouteBase>[
    //       GoRoute(
    //           name: 'signUp',
    //           path: RouterPath.signUp,
    //           builder: (BuildContext context, GoRouterState state) {
    //             return const SignUpPage();
    //           }),
    //       GoRoute(
    //           name: 'forgotPassword',
    //           path: RouterPath.forgotPassword,
    //           builder: (BuildContext context, GoRouterState state) {
    //             return const ForgotPasswordPage();
    //           })
    //     ]),

    // ///BOTTOM BAR NAVIGATION
    // StatefulShellRoute.indexedStack(
    //     builder: (context, state, navigationShell) {
    //       return BottomNavBar(navigationShell);
    //     },
    //     branches: [
    //       StatefulShellBranch(routes: [
    //         GoRoute(
    //             path: RouterPath.home,
    //             builder: (context, state) => const HomePage(),
    //             routes: <RouteBase>[
    //               GoRoute(
    //                   name: 'returnScanner',
    //                   path: 'returnScanner',
    //                   builder: (BuildContext context, GoRouterState state) {
    //                     return ScannerPage(state.extra!.toString());
    //                   }),
    //             ])
    //       ]),
    //       StatefulShellBranch(routes: [
    //         GoRoute(
    //             path: '/returns',
    //             builder: (context, state) => const ReturnListPage())
    //       ]),
    //       StatefulShellBranch(routes: [
    //         GoRoute(
    //           path: '/setting',
    //           builder: (context, state) => const ProfilePage(),
    //           /*routes: [
    //                   GoRoute(
    //                     path: 'contactUs',
    //                     builder: (context, state) =>
    //                         ContactUsPage(breed: state.extra as contactUsArgument),
    //                   )
    //                 ]*/
    //         )
    //       ])
    //     ])
  ];
}
