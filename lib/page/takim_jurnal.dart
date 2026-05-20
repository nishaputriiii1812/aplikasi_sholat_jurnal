import 'package:flutter/material.dart';

class TakimJurnal extends StatefulWidget {
  const TakimJurnal({super.key});

  @override
  State<TakimJurnal> createState() => _TakimJurnalState();
}

class _TakimJurnalState extends State<TakimJurnal> {
  int selectedHari = 2;

  bool shubuhSudah = false;
  bool dzuhurSudah= false;
  bool asharSudah = false;
  bool maghribSudah = false;
  bool isyaSudah = false;
  bool dhuhaSudah= false;
  bool tahajjudSudah = false;

  TextEditingController refleksiController = TextEditingController();
  List<String> hariSngkt = ["Rab","Kam","Jum","Sab", "Ming"];
  List<String> hariPnjng = ["Rabu", "Kamis","Jumat","Sabtu","Minggu" ];
  List<int> tanggalList = [22,23,24,25,26];
  void _refreshHari() {
    shubuhSudah = false;
    dzuhurSudah = false;
    asharSudah = false;
    maghribSudah = false;
    isyaSudah = false;
    dhuhaSudah = false;
    tahajjudSudah = false;
    refleksiController.clear();
  }
  @override
  void dispose() {
    refleksiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(color: Colors.blue,
                width: double.infinity,
                padding: EdgeInsets.all(12),
                child: Text(
                  "${hariPnjng[selectedHari]}, ${tanggalList[selectedHari]} APRIL 2026",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (index) {
                    bool _ = selectedHari == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _refreshHari();
                          selectedHari = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        color: Colors.lightBlue,
                        child: Column(
                          children: [
                            Text(hariSngkt[index],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "${tanggalList[index]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  Checkbox(value: shubuhSudah,
                    onChanged: (v) {
                      setState(() { shubuhSudah = v!; });
                    },
                  ),
                  Text("Shubuh (04:55)"),
                ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),),
                child: Row(
                  children: [
                    Checkbox(
                      value: dzuhurSudah,
                      onChanged: (v) {
                        setState(() {dzuhurSudah = v!; });
                      },
                    ),
                    Text("Dzuhur (12:25)"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: asharSudah,
                      onChanged: (v) {
                        setState(() {
                          asharSudah = v!;
                        });
                      },
                    ),
                    Text("Ashar (15:15)"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Checkbox(value: maghribSudah,
                      onChanged: (v) {
                        setState(() { maghribSudah= v!; });
                      },
                    ),
                    Text("Maghrib (18:10)"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: isyaSudah,
                      onChanged: (v) {
                        setState(() {
                          isyaSudah = v!;
                        });
                      },
                    ),
                    Text("Isya (19:25)"),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                width: double.infinity,
                child: Text("Sunnah",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: dhuhaSudah,
                      onChanged: (v) {
                        setState(() { dhuhaSudah = v!;
                        });
                      },
                    ),
                    Text("Dhuha"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Checkbox(value: tahajjudSudah,
                      onChanged: (v) {
                        setState(() {
                          tahajjudSudah = v!; });
                      },
                    ),
                    Text("Tahajud"),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Refleksi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 15,),
                    ),
                    SizedBox(height: 6),
                    TextField(
                      controller: refleksiController,
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: "Refleksi hari ini..",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Refleksi disimpan!")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text("Simpan",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}