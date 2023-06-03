import 'package:flutter/material.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/home_medicines.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/home_notification.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/home_step.dart';
import 'package:imedicine/app/presentation/screens/home/widgets/medicines2.dart';

import '../../../../gen/colors.gen.dart';

import 'medicines_detail.dart';

class medicinesDetail extends StatefulWidget {
  const medicinesDetail({super.key});

  @override
  State<medicinesDetail> createState() => _medicinesDetailState();
}

class _medicinesDetailState extends State<medicinesDetail> {
  bool ButtonCheckisClicked = false;
  bool ButtonNotCheckisClicked = false;

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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: 330,
            height: 180,
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Padding(
                      padding:
                          const EdgeInsets.only(top: 0, right: 13, left: 10),
                      child: Image.asset('assets/images/ilaclar2.png'),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: Text(
                        'Parol',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    subtitle: Text('4 Mayıs, 14:30\n4 mg\n2 Doz'),
                    onTap: () {
                      // ListTile'a tıklandığında yapılacak işlemler
                    },
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 130,
                          // butona tıklandığında renk değişikliği yapmak için bir değişken tanımlayın

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ButtonNotCheckisClicked
                                  ? Colors.red
                                  : Colors.blue[
                                      100], // butonun rengini tıklama durumuna göre ayarlayın
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonNotCheckisClicked
                                    ? Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 18,
                                      )
                                    : SizedBox(),
                                SizedBox(width: 5),
                                Text(
                                  "Alınmadı",
                                  style: TextStyle(
                                    color: ButtonNotCheckisClicked
                                        ? Colors.white
                                        : Colors.blue[
                                            900], // metin rengini tıklama durumuna göre ayarlayın
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                ButtonNotCheckisClicked =
                                    !ButtonNotCheckisClicked; // butona tıklandığında isClicked değişkenini tersine çevirin
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ButtonCheckisClicked
                                  ? Colors.green
                                  : Colors.blue[
                                      100], // butonun rengini tıklama durumuna göre ayarlayın
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonCheckisClicked
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 18,
                                      )
                                    : SizedBox(),
                                SizedBox(width: 5),
                                Text(
                                  "Alındı",
                                  style: TextStyle(
                                    color: ButtonCheckisClicked
                                        ? Colors.white
                                        : Colors.blue[
                                            900], // metin rengini tıklama durumuna göre ayarlayın
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                ButtonCheckisClicked =
                                    !ButtonCheckisClicked; // butona tıklandığında isClicked değişkenini tersine çevirin
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
