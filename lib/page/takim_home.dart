import 'package:aplikasi_sholat_jurnal/page/biba_profile_page.dart';
import 'package:aplikasi_sholat_jurnal/widget/biba_notif.dart';
import 'package:flutter/material.dart';

class TakimHome extends StatefulWidget {
  const TakimHome({super.key});

  @override
  State<TakimHome> createState() => _TakimHomeState();
}

class _TakimHomeState extends State<TakimHome> {
  final List<bool> sholat = [true, true, false, false, false];
  final List<String> namaWaktu = ["Subuh", "Dzuhur", "Ashar", "Maghrib", "Isya"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title:  Text("Jurnal Sholat"),
        flexibleSpace: Container(
          padding:  EdgeInsets.all(50),
          decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: [Colors.blue,Colors.blueAccent],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BibaNotif()),
            ),
            icon:  Icon(Icons.notifications, color: Colors.white),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BibaProfilePage()),
            ),
            icon:  Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assallamualikum Debi X RPL1",
              style: TextStyle(color: Colors.white,
                  fontSize: 14
              ),
            ),
            Text(
              "X Rpl 1",
              style: TextStyle(color: Colors.white,
                  fontSize: 14
              ),
            ),
            SizedBox(height: 17),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 200,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DHUHUR - 11:55",
                          style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Kurang 15 Menit",
                          style: TextStyle(
                            color: Colors.white,fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,height: 60,
                    decoration: BoxDecoration(shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 3),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/images/gambar1.jpg",
                      height: 10,
                      width: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blueAccent,borderRadius:
              BorderRadius.circular(20),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Centang sholat Hari ini: ",
                    style: TextStyle(
                      color: Colors.white,fontStyle: FontStyle.normal,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(5,(index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() { sholat[index] = !sholat[index]; });},
                        child: Container(
                          width: 50,height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: sholat[index] ? Colors.green : Colors.white,
                            border: Border.all(color: sholat[index] ? Colors.green : Colors.blue,width: 2,
                            ),
                          ),
                          child: sholat[index] ? Icon(Icons.check_circle_outlined,color: Colors.white,size: 22) : null,
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: namaWaktu.map((nama) {
                      return SizedBox(width: 44,
                        child: Text(
                          nama,textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70,fontSize: 9,
                          ),
                        ),
                      );}).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kutipan Hari ini: ",
                    style: TextStyle(color: Colors.black,fontStyle: FontStyle.normal,fontSize: 13,),),
                  SizedBox(height: 8),
                  Text("Sesungguhnya sholat itu mencegah dari perbuatan dosa yang mendekat",
                    style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w600,fontSize: 15,),),
                  SizedBox(height: 8),
                  Text("QS.Al-Ankabut: 45",style: TextStyle(color: Colors.black,fontSize: 13,
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
