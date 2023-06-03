import 'package:flutter/material.dart';

import 'app/routes/routes.dart';
import 'core/helpers/navigation/navigation_helper.dart';

void main() {
  runApp(MaterialApp(
    navigatorKey: Navigation.navigatorKey,
    onGenerateRoute: AppRoute.generateRoute,
    initialRoute: AppRoute.root,
  ));
}
