import 'package:flutter/material.dart';

class BibaNotif extends StatefulWidget {
  const BibaNotif({super.key});

  @override
  State<BibaNotif> createState() => _BibaNotifState();
}

class _BibaNotifState extends State<BibaNotif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.indigo],
            ),
          ),
        ),
        title: Text("Notifikasi", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, a) {
          return ListTile(
            leading: Icon(Icons.notifications),
            subtitle: Text(
              notifications[a].isRead ? 'sudah dibaca' : 'belum dibaca',
            ),
            trailing: Icon(notificatons[a].isRead ? Icons.check_circle: Icons.radio_button_checked,
            ),
            onTap: (){
              setState(() {
                notifications[a].isRead = true;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailNotifScreen))
            },
          );
        },
      ),
    );
  }
}
