import 'package:auto_route/auto_route.dart';
import 'package:auto_route_guard_bug/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends HookWidget {
  final void Function()? onComplete;

  SignInPage({this.onComplete});

  @override
  Widget build(BuildContext context) {
    final signInFuture = useProvider(loginProvider);
    print('Build SignIn');

    return Scaffold(
        body: signInFuture.when(
      data: (value) {
        print('Has Data');
        if (context.routeData.isActive) {
          print('call');

          WidgetsBinding.instance?.addPostFrameCallback((duration) {
            onComplete?.call();
          });
        }
        return SizedBox.shrink();
      },
      loading: () {
        print('Loading');
        return CircularProgressIndicator();
      },
      error: (error, stackTrace) {
        print(error);
        return SizedBox.shrink();
      },
    ));
  }
}
