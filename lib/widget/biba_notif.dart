import 'package:aplikasi_sholat_jurnal/biba_detail_notif_screen.dart';
import 'package:flutter/material.dart';

import '../service/biba_notif_service.dart';

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
              title: Text(notications[x].judul),
              subtitle: Text(
                notications[x].isRead ? 'Sudah dibaca' : 'Belum dibaca',
              ),
              trailing: Icon(
                notications[x].isRead
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
              ),
              onTap: () {
                setState(() {
                  notications[x].isRead = true;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BibaDetailNotifScreen(
                      judul: notications[x].judul,
                      notifikasi: notications[x].notifikasi,
                      imageUrl: notications[x].imageUrl,
                    ),
                  ),
                );
              },
            );
          },
        ),
    );
  }
}
