import 'package:flutter/material.dart';

class Navigation {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Future<T?>? push<T>({required Widget page}) {
    return navigatorKey.currentState?.push(_materialPageRoute(page));
  }

  static Future<T?>? pushNamed<T>({required String root,Object? arg}) {
    return navigatorKey.currentState?.pushNamed(root,arguments: arg);
  }

  static Future<T?>? pushNamedAndRemoveAll<T>({required String root,Object? arg}) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(root, (route) => false,arguments: arg);
  }

  static Future<T?>? pushAndRemoveAll<T>({required Widget page}) {
    return navigatorKey.currentState?.pushAndRemoveUntil(_materialPageRoute(page), (route) => false);
  }

  static void pop({dynamic result}) {
    navigatorKey.currentState?.pop(result);
  }

  static MaterialPageRoute<T> _materialPageRoute<T>(Widget page) {
    return MaterialPageRoute<T>(builder: (_) => page);
  }
}