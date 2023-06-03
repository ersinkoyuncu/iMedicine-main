import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../duty_pharmacy/duty_pharmacy_screen.dart';
import '../home/home_screen.dart';
import '../medicine_register/medicine_register_screen.dart';
import '../smoking_control/control_screen.dart';
import '../step_control/step_control_screen.dart';

class MainBottomNavigationBarScreen extends StatefulWidget {
  const MainBottomNavigationBarScreen({super.key});

  @override
  State<MainBottomNavigationBarScreen> createState() =>
      _MainBottomNavigationBarScreenState();
}

class _MainBottomNavigationBarScreenState
    extends State<MainBottomNavigationBarScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const StepControlScreen(),
    const SmokeControlScreen(),
    const DutyPharmacyScreen(),
    const MedicineRegisterScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final iconList = <IconData>[
    Icons.home,
    Icons.run_circle,
    Icons.attach_money_outlined,
    Icons.location_city,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorName.appWhite,
        child: const Icon(
          Icons.medical_services_outlined,
          color: ColorName.appMelrose,
        ),
        onPressed: () {
          onTabTapped(4);
        },
        //params
      ),
      backgroundColor: ColorName.appWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _children[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 18,

        backgroundColor: ColorName.appWhite,
        activeColor: ColorName.appMelrose,
        inactiveColor: ColorName.appMelrose,

        rightCornerRadius: 18,
        onTap: (index) => setState(() => _currentIndex = index),
        //other params
      ),

      /*BottomNavigationBar(
        backgroundColor: ColorName.appMelrose,
        selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 15),
        unselectedLabelStyle:
            const TextStyle(color: Colors.white, fontSize: 13),
        type: BottomNavigationBarType.fixed, // Fixed

        fixedColor: ColorName.appWhite,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: ColorName.appWhite,
            ),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.medical_information,
              color: ColorName.appWhite,
            ),
            label: 'İlaç',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.no_accounts,
              color: ColorName.appWhite,
            ),
            label: 'Sigara',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: ColorName.appWhite,
            ),
            label: 'Profil',
          )
        ],
      ),*/
    )
        //SplashScreen(),
        );
  }
}
