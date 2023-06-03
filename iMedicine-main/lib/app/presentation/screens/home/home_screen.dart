///TODO: created Ersin

import 'package:flutter/material.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/home_medicines.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/home_notification.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/home_step.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/medicines2.dart';
import 'package:imedicine/app/presentation/screens/medicines_detail/medicines_detail.dart';



import '../../../../gen/colors.gen.dart';

import '';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorName.appMelrose, ColorName.appBlack],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [

              Padding(
                padding:  EdgeInsets.only(top:15.0,left: 10,right: 10),
                child: HomeStep(),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom:10.0,left: 10,right: 10,),
                child: HomeNotification(),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10,right: 120,bottom: 10,top: 10),
                child: Medicines2(),
              ),
            ],
        ),
      ),
    );
  }
}
