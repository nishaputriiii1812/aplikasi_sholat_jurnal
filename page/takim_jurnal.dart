import 'package:flutter/material.dart';

class TakimJurnal extends StatefulWidget {
  const TakimJurnal({super.key});

  static List<Map<String, dynamic>> _sholatFardu = [
    {"nama": "shubuh", "waktu": "04:55", "sudah": true,
    "info": "tepat waktu Berjamaah Dimasjid"},
    {"nama": "Dhzur", "waktu": "12:25", "sudah": true,
      "info": "Tepat Waktu Sendiri"},
    {"nama": "Ashar", "waktu": "15:15", "sudah": true,
      "info": "Tepat Waktu Berjamaah"},
    {"nama": "Magrib", "waktu": "18:10", "sudah": true,
      "info": "tepat waktu Berjamaah Dimasjid"},
    {"nama": "shubuh", "waktu": "12:25", "sudah": true,
      "info": "tepat waktu Berjamaah Dimasjid"},
  ];

  static List<Map<String, dynamic>> _sholatSunnah = [
    {"nama": "Dhuha", "sudah": true},
    {"nama": "Tahajud", "sudah": false},
  ];


  @override
  State<TakimJurnal> createState() => _TakimJurnalState();
}

class _TakimJurnalState extends State<TakimJurnal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(16, 50, 16, 8),
            child: Text(
              "Jum'at 24 APRIL 2026",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
          ),
          SizedBox(height: 70,
            child: ListView(scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              children: [
                _hariItem("Rab", "22", false),
                _hariItem("Kamis", "23", false),
                _hariItem("Jum'at", "24", true),
                _hariItem("Sabtu", "25", false),
                _hariItem("Minggu", "26", false),
              ],
            ),
          ),
          Divider(height: 1),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                _sholatFardhu.map((s) => _itemSholat(s)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Sunnah',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
                _sholatSunnah.map((s) => _itemSholatSunnah(s)),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {},
                      child: Text("Refleksi Hari ini..."),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

Widget _itemSholat(Map<String, dynamic> s) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(s ["sudah"] ? Icons.circle : Icons.circle_outlined,
                color: s["sudah"] ? Colors.green : Colors.grey,size: 14,
                ),
                SizedBox(width: 8),
                Text("${s["nama"]} (${s["waktu"]})",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(s["sudah"] ? "already" : "",
                style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(width: 6),
                Switch(
                    value: s["sudah"],
                    onChanged: null,
                  activeColor: Colors.green,
                ),
              ],
            )
          ],
        ),
        if ((s["info"] as String).isNotEmpty)
          Padding(
              padding: EdgeInsets.only(top: 4,left: 22),
            child: Text(
              s["info"],
              style: TextStyle(fontSize: 12,color: Colors.grey),
            ),
          ),
      ],
    ),
  );
}
 Widget _itemSholatSunnah(Map<String, dynamic> s) {
  return Container(
    margin: EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        Icon(s["sudah"] ? Icons.check_circle : Icons.circle_outlined,
        color: s["sudah"] ? Colors.green : Colors.grey,
        ),
        SizedBox(width: 10),
        Text(s["nama"]),
      ],
    ),
  );
 }

Widget _hariItem(String hari, String tgl, bool aktif) {
  return Container(
    width: 55,
    margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
    decoration: BoxDecoration(
      color: aktif ? Colors.blue : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(hari,
            style: TextStyle(
                color: aktif ? Colors.white : Colors.grey,
                fontSize: 12)),
        Text(tgl,
            style: TextStyle(
                color: aktif ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
            ),
        ),
      ],
    ),
  );
}
