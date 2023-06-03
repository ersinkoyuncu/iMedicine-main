///TODO: created Ersin

import 'package:flutter/material.dart';
import 'package:imedicine/app/presentation/screens/step_control/widgets/step_control_data.dart';
import 'package:imedicine/app/presentation/screens/step_control/widgets/step_control_days.dart';

import '../../../../gen/colors.gen.dart';

class StepControlScreen extends StatefulWidget {
  const StepControlScreen({super.key});

  @override
  State<StepControlScreen> createState() => _StepControlScreenState();
}

class _StepControlScreenState extends State<StepControlScreen> {
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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text("Günlük Verileriniz",style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8,bottom: 25),
                  child: StepControlData(),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text("Bu Hafta",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                  child: StepControlDays(),
                ),
                
          
              ],
            ),
          ),
          ),
    );
  }
}
