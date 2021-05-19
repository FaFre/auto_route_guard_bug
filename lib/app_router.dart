import 'package:auto_route/auto_route.dart';
import 'package:auto_route_guard_bug/auth_guard.dart';
import 'package:auto_route_guard_bug/home_page.dart';
import 'package:auto_route_guard_bug/sign_in_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(path: '/', guards: [AuthGuard], page: HomePage, initial: true),
  AutoRoute(path: '/login', page: SignInPage),
])
class $AppRouter {}
