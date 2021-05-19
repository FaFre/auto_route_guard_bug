import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginProvider = FutureProvider.autoDispose((ref) async {
  await Future.delayed(Duration(seconds: 2));
  return true;
});
