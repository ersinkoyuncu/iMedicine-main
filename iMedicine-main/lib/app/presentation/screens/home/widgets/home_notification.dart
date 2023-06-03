///TODO: created Ersin

import 'package:flutter/material.dart';
import 'package:imedicine/app/presentation/screens/step_control/step_control_screen.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../gen/colors.gen.dart';


class HomeNotification extends StatefulWidget {
  const HomeNotification({super.key});

  @override
  State<HomeNotification> createState() => _HomeNotificationState();
}

class _HomeNotificationState extends State<HomeNotification> {

  @override
  Widget build(BuildContext context) {
    return Container(         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 16.0),
            Padding( 
              padding: const EdgeInsets.only(top: 20,left: 4),
              child: Text(
                'Yaklaşan Bildirimler',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 8.0),
            ClipRRect (
              borderRadius: BorderRadius.circular(32.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.notifications,color: Colors.amber[800],),
                  title: Text('Doktor Randevusu'),
                  subtitle: Text('2 Mart, 14:30'),
                  // trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Bildirim detay sayfasına yönlendirme yapılabilir.
                  },
                ),
              ),
            ),
            SizedBox(height: 8.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.notifications,color: Colors.amber[800],),
                  title: Text('İlaç Hatırlatıcı'),
                  subtitle: Text('3 Mart, 12:00'),
                  // trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Bildirim detay sayfasına yönlendirme yapılabilir.
                  },
                ),
              ),
            ), 
          ],
        ),
          
    );
  
  }
}
