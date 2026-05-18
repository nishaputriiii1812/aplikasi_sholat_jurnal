import 'package:aplikasi_sholat_jurnal/biba_detail_notif_screen.dart';
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
                colors: [Colors.pinkAccent, Colors.redAccent],
              ),
            ),
          ),
          title: Text('Notifikasi', style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
            itemCount: notications.length,
          itemBuilder: (context, x) {
            return ListTile(
              leading: Icon(Icons.notifications),
              title: Text(notifications[x].judul),
              subtitle: Text(
                notifications[x].isRead ? 'Sudah dibaca' : 'Belum dibaca',
              ),
              trailing: Icon(
                notifications[x].isRead
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
              ),
              onTap: () {
                setState(() {
                  notifications[x].isRead = true;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BibaDetailNotifScreen(
                      judul: notifications[x].judul,
                      notifikasi: notifications[x].notifikasi,
                      imageUrl: notifications[x].imageUrl,
                    ),
                  ),
                );
              },
            );
          },
        ),
  }
}
