import 'package:flutter/material.dart';

import '../presentation/screens/auth/login/login_screen.dart';
import '../presentation/screens/auth/register/register_screen.dart';
import '../presentation/screens/main_bottomnavigationbar_screen/main_bottomnvbar_screen.dart';
import '../presentation/screens/medicine_register/medicine_register_screen.dart';
import '../presentation/screens/root/root_screen.dart';
import '../presentation/screens/smoke_info_update_screen/information_update_screen.dart';
import '../presentation/screens/smoking_control/control_screen.dart';

class AppRoute {
  static const root = '/';
  static const login = '/login';
  static const register = '/register';
  static const control = '/control';
  static const cigaretteDetail = '/cigaretteDetail';
  static const medicineRegister = '/medicineRegister';
  static const dutyPharmacy = '/dutyPharmacy';
  static const mainBottomNavigationBarScreen = "/mainBottomNavigationBarScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return _materialPageRoute(const RootScreen());
      case login:
        return _materialPageRoute(const LoginScreen());
      case register:
        return _materialPageRoute(const RegisterScreen());
      case control:
        return _materialPageRoute(const SmokeControlScreen());
       case cigaretteDetail:
         return _materialPageRoute(const InformationUpdateScreen());
      case medicineRegister:
        return _materialPageRoute(const MedicineRegisterScreen());
      case dutyPharmacy:
        return _materialPageRoute(const MedicineRegisterScreen());
      case mainBottomNavigationBarScreen:
        return _materialPageRoute(const MainBottomNavigationBarScreen());
      default:
        return _materialPageRoute(const RootScreen());
    }
  }

  static MaterialPageRoute<dynamic> _materialPageRoute(Widget page) {
    return MaterialPageRoute<dynamic>(builder: (_) => page);
  }
}
