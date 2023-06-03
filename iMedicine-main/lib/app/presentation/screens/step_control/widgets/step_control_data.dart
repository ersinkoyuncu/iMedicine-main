///TODO: created Ersin

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

  var currentStep = 5331;
  late var currentCalories = currentStep * 0.046;
  late var currentKilometers = currentStep * 0.0008;

class StepControlData extends StatefulWidget {
  const StepControlData({super.key});

  @override
  State<StepControlData> createState() => _StepControlDataState();
}

class _StepControlDataState extends State<StepControlData> {




  @override
  Widget build(BuildContext context) {
    return  Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
          Padding(
             padding: const EdgeInsets.only(left: 8,right: 10,top: 10),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 90,
               decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 5,top: 10),
                      child: Text("Adım",style: TextStyle(fontSize: 15),),
                    ),
                    Row(
                      children: [
                        Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "$currentStep",
                        style: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      " / Hedeflenen Adım: 8000",
                      style: TextStyle(fontSize: 13),
                    ), //daha sonra kullanıcıdan hedef adım alınacak
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right:25.0),
                      child: Image.asset('assets/images/steps.png'),
                    )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
         
         Padding(
           padding: const EdgeInsets.all(3.0),
           child: Padding(
               padding: const EdgeInsets.only(left: 8,right: 10,top: 7),
             child: Container(
              height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,bottom: 5,top: 10),
                        child: Text("Yakılan Kalori",style: TextStyle(fontSize: 15),),
                      ),
                      Row(
                        children: [
                          Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          currentCalories.toStringAsFixed(1),
                          style: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right:25.0),
                      child: Image.asset('assets/images/burn.png'),
                    )
                        ],
                      ),
                    ],
                  ),
                ),
           ),
         ),

         Padding(
            padding: const EdgeInsets.all(3.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 10,top: 7),
              child: Container(
                height: 90,
               decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 5,top: 10),
                      child: Text("Mesafe",style: TextStyle(fontSize: 15),),
                    ),
                    Row(
                      children: [
                        Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        currentKilometers.toStringAsFixed(2),
                        style: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      " km",
                      style: TextStyle(fontSize: 13),
                    ),
                     Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right:25.0),
                      child: Image.asset('assets/images/distance.png'),
                    )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
         ],

    );
  }
}