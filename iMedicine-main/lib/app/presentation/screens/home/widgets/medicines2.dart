///TODO: created Ersin

import 'package:flutter/material.dart';

class Medicines2 extends StatefulWidget {
  const Medicines2({Key? key}) : super(key: key);

  @override
  State<Medicines2> createState() => _Medicines2State();
}

class _Medicines2State extends State<Medicines2> {
  bool buttonCheckIsClicked = false;
  bool buttonNotCheckIsClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 4),
            child: Text(
              'Kullandığım İlaçlar',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              height: 95.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 0, right: 10),
                      child: Image.asset('assets/images/ilaclar2.png'),
                    ),
                    title: Text('Parol'),
                    subtitle: Text('4 Mayıs, 14:30\n4 mg\n2 Doz'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) => StatefulBuilder(
                          builder: (BuildContext context, setState) {
                            return AlertDialog(
                              content: ListTile(
                                leading: Padding(
                                  padding: const EdgeInsets.only(top: 0, right: 13, left: 10),
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
                              actions: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 35,
                                        width: 130,
                                        child: InkWell(
                                          onTap: () {
                                            print("Alınmadı");
                                            setState(() {
                                              buttonNotCheckIsClicked = !buttonNotCheckIsClicked;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: buttonNotCheckIsClicked
                                                  ? Colors.red
                                                  : Colors.blue[100],
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                buttonNotCheckIsClicked
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
                                                    color: buttonNotCheckIsClicked
                                                        ? Colors.white
                                                        : Colors.blue[900],
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 130,
                                        height: 35,
                                        child: InkWell(
                                          onTap: () {
                                            print("Alındı");
                                            setState(() {
                                              buttonCheckIsClicked = !buttonCheckIsClicked;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: buttonCheckIsClicked
                                                  ? Colors.green
                                                  : Colors.blue[100],
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                buttonCheckIsClicked
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
                                                    color: buttonCheckIsClicked
                                                        ? Colors.white
                                                        : Colors.blue[900],
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              height: 95.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 0, right: 10),
                      child: Image.asset('assets/images/ilaclar2.png'),
                    ),
                    title: Text('Gaviscon'),
                    subtitle: Text('10 Mayıs, 20:30\n4 mg\n1 Doz'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // İlaç detay sayfasına yönlendirme yapılabilir.
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
