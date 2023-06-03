///TODO: created Ersin

import 'package:flutter/material.dart';
import 'package:imedicine/app/presentation/screens/step_control/step_control_screen.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../gen/colors.gen.dart';

class HomeStep extends StatefulWidget {
  const HomeStep({super.key});

  @override
  State<HomeStep> createState() => _HomeStepState();
}

class _HomeStepState extends State<HomeStep> {
  var _groupValue = "";

 final List  _medicines = [      //KULLANICININ KULLANDIĞI İLAÇLAR GİRİLECEK
    "Parol",
    "Arvales",
    "Ella",
    "Gaviscon",
    "Coldaway",
    "Dolorex",
    "Coraspin"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
       const   Text(
              'Adım Sayısı',
              style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding:  EdgeInsets.only(top: 10),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const  Icon(Icons.directions_walk, color: Colors.white,),
          const  SizedBox(width: 8.0),
          const  Text(
              '1254 Adım',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ),
           const SizedBox(width: 8.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StepControlScreen()));
              },
              child: Text('Detay'),
            ),
        ],
              ),
      ),   
        ],
      ),
    );
    
  }
}
