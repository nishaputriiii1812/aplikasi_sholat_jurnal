import 'package:aplikasi_sholat_jurnal/nisha_login.dart';
import 'package:aplikasi_sholat_jurnal/page/biba_profile_page.dart';
import 'package:aplikasi_sholat_jurnal/page/takim_home.dart';
import 'package:aplikasi_sholat_jurnal/widget/biba_kebijakan_aplikasi.dart';
import 'package:aplikasi_sholat_jurnal/widget/biba_syarat_dan_ketentuan.dart';
import 'package:aplikasi_sholat_jurnal/widget/biba_tentang_aplikasi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BibaAkun extends StatefulWidget {
  final int id;
  const BibaAkun({super.key, required this.id});

  @override
  State<BibaAkun> createState() => _BibaAkunState();
}

class _BibaAkunState extends State<BibaAkun> {
  bool notif = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TakimHome(id: widget.id)),
            );
          },
          icon: Icon(CupertinoIcons.back),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Akun", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 95,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1)],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            accounts[widget.id].nama,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3, top: 3),
                            child: Text(
                              accounts[widget.id].email,
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo.shade300,
                            ),
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'X RPL 1',
                              style: TextStyle(color: Colors.indigo.shade700),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BibaProfilePage(id: widget.id),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'preferensi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1)],
              ),
              subtitle: Text('blala'),
              secondary: Icon(Icons.notifications_active),
              value: notif,
              onChanged: (value) {
                setState(() {
                  notif = !notif;
                });
              },
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Lainnya',
          style: TextStyle(
            fontWeight: FontWeight.bold,
              ),
        ),
      ),
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(offset: Offset(1.5,1.5),blurRadius: 1)],
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Tentang Aplikasi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            leading:Icon(
              Icons.question_maark,
            ),
            onTap:() {
            Nvigator.push(
              context,MaterialPageRoute(builder: (context) => BibaTentangAplikasi(),
                  ),
                );
              },
            ),
    ListTile(
    title:Text(
    'Kebijakan Privasi',
    style:TextStyle(fontWeight:FontWeight.bold),
    ),
    ),
    leading:Icon(Icons.fact_check_rounded,
    ),
    onTap:(){
          Navigator.push(context,MaterialPageRoute(builder: (context) => BibaKebijakanAplikasi(),
    ),
    );
    ListTile(
    title:Text(
    'syarat dan ketentuan',
    style:TextStyle(fontWeight:FontWeight.bold),
    ),
    );
    leading:Icon(Icons.document_scanner_outlined,
    );
    onTap:(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => BibaSyaratDanKetentuan(),
    ),
    );
    );
    };
    }
          ],
        ),
    SizedBox(height:20 ),
    Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    boxShadow: [BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1)],
    ),
    child: Column(
    children: [
      ListTile(title: Text('Log Out'),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,
    ),
    ),
    leading:Icon(Icons.logout,
    ),
    onTap: () {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(
    builder: (context) => NishaLogin()),
    ),
    );
    },
    ),
    ListTile(title:Text('Hapus Akun',style:TextStyle(fontWeight:FontWeight.bold)))
    ],
    ) ,
      )
    );
  }
}
