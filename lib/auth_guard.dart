import 'package:auto_route/auto_route.dart';
import 'package:auto_route_guard_bug/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.root.push(SignInRoute(
      onComplete: () {
        router.removeLast();
        resolver.next(true);
      },
    ));
  }
}
