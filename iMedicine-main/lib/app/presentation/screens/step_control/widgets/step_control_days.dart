///TODO: created Ersin

import 'package:flutter/material.dart';
import 'step_control_data.dart';

class StepControlDays extends StatefulWidget {
  const StepControlDays({super.key});

  @override
  State<StepControlDays> createState() => _StepControlDaysState();
}

class _StepControlDaysState extends State<StepControlDays> {
    var days = [
    'Pazartesi',
    'Salı',
    'Çarşamba',
    'Perşembe',
    'Cuma',
    'Cumartesi',
    'Pazar'
  ];
   
  @override
  Widget build(BuildContext context) {
    return SizedBox (
      height: 170,
                   child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: days.length,
                      itemBuilder: (context,indeks){
                        return Padding(
                          padding: const EdgeInsets.only(top:8,left: 5),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 80,
                                child: Column(
                                  children: [
                                    Text(days[indeks]),
                                    const Spacer(),
                                    Text("$currentStep",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                   const Spacer(),
                                  const  Icon(Icons.run_circle),
                                   
                                  ],
                                ),                             
                              ),                           
                            ),                         
                          ),                      
                        );
                      }
                             ),
    );
  }
}