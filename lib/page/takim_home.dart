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
  final PageController _pageController = PageController();
  int _kutipanIndex = 0;

  final List<Map<String, String>> kutipan = [
    {
      'text': 'Sesungguhnya sholat itu mencegah dari perbuatan keji dan mungkar.',
      'ayat': 'QS. Al-Ankabut: 45',
    },
    {
      'text': 'Dan dirikanlah sholat, tunaikanlah zakat, dan rukuklah bersama orang-orang yang rukuk.',
      'ayat': 'QS. Al-Baqarah: 43',
    },
    {
      'text': 'Sesungguhnya Allah beserta orang-orang yang sabar.',
      'ayat': 'QS. Al-Baqarah: 153',
    },
    {
      'text': 'Barangsiapa bertakwa kepada Allah, maka Dia akan membukakan jalan keluar baginya.',
      'ayat': 'QS. At-Talaq: 2',
    },
    {
      'text': 'Sesungguhnya bersama kesulitan ada kemudahan.',
      'ayat': 'QS. Al-Insyirah: 6',
    },
    {
      'text': 'Wahai orang-orang yang beriman, mintalah pertolongan dengan sabar dan sholat.',
      'ayat': 'QS. Al-Baqarah: 153',
    },
    {
      'text': 'Dan Allah mencintai orang-orang yang berbuat kebaikan.',
      'ayat': 'QS. Al-Imran: 134',
    },
  ];

  void _prevKutipan() {
    if (_kutipanIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void _nextKutipan() {
    if (_kutipanIndex < kutipan.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Jurnal Sholat"),
        flexibleSpace: Container(
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueAccent],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BibaNotif()),
            ),
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BibaProfilePage()),
            ),
            icon: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assallamualikum Debi X RPL1",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Text(
              "X Rpl 1",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(height: 17),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DHUHUR - 11:55",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Kurang 15 Menit",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/images/gambar1.jpg",
                      fit: BoxFit.cover,
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
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Centang sholat Hari ini: ",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(5, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            sholat[index] = !sholat[index];
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: sholat[index] ? Colors.green : Colors.white,
                            border: Border.all(
                              color: sholat[index] ? Colors.green : Colors.blue,
                              width: 2,
                            ),
                          ),
                          child: sholat[index]
                              ? Icon(Icons.check_circle_outlined,
                              color: Colors.white, size: 22)
                              : null,
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: namaWaktu.map((nama) {
                      return SizedBox(
                        width: 44,
                        child: Text(
                          nama,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70, fontSize: 9),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kutipan Hari ini:",
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 100,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: kutipan.length,
                      onPageChanged: (i) =>
                          setState(() => _kutipanIndex = i),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.grey.shade100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                kutipan[index]['text']!,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.green,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 6),
                              Text(
                                kutipan[index]['ayat']!,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _prevKutipan,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(80, 32),
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          "{==",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                      Text(
                        "${_kutipanIndex + 1} / ${kutipan.length}",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                      ElevatedButton(
                        onPressed: _nextKutipan,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(80, 32),
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          "==}",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}