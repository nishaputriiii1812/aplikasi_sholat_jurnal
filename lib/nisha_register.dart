import 'package:aplikasi_sholat_jurnal/nisha_login.dart';
import 'package:aplikasi_sholat_jurnal/page/takim_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NishaRegister extends StatefulWidget {
  const NishaRegister({super.key});

  @override
  State<NishaRegister> createState() => _NishaRegisterPageState();
}

class _NishaRegisterPageState extends State<NishaRegister> {
  TextEditingController _Username = TextEditingController();
  TextEditingController _Nama = TextEditingController();
  TextEditingController _Cawword = TextEditingController();
  TextEditingController _Confrim = TextEditingController();
  bool _isSecure = true;
  IconData _icon = Icons.remove_red_eye;
  void isSecure() {
    setState(() {
      if (_isSecure) {
        _isSecure = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isSecure = true;
        _icon = CupertinoIcons.eye;
      }
    });
  }

  List<DropdownMenuEntry<int>> pilih = [
    DropdownMenuEntry(value: 0, label: 'X RPL 1'),
    DropdownMenuEntry(value: 0, label: 'X RPL 2'),
    DropdownMenuEntry(value: 0, label: 'X TKJ 1'),
    DropdownMenuEntry(value: 0, label: 'X TKJ 2'),
    DropdownMenuEntry(value: 0, label: 'X TKJ 3'),
    DropdownMenuEntry(value: 0, label: 'X TKJ 4'),
    DropdownMenuEntry(value: 0, label: 'X DPIB'),
    DropdownMenuEntry(value: 0, label: 'X DKV 1'),
    DropdownMenuEntry(value: 0, label: 'X DKV 2'),
    DropdownMenuEntry(value: 0, label: 'X DKV 3'),
    DropdownMenuEntry(value: 0, label: 'X DKV 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(50),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/download (15).jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.black12.withValues(alpha: 0.6),
                blurRadius: 5,
                spreadRadius: 3,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MY LOVE APP",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                TextField(
                  controller: _Username,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlue.withValues(alpha: 0.7),
                    hintText: "Username",
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.person, color: Colors.teal),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _Nama,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlue.withValues(alpha: 0.7),
                    hintText: "Nama",
                    labelText: 'nama panggilan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.person, color: Colors.teal),
                  ),
                ),

                SizedBox(height: 10),
                TextField(
                  controller: _Cawword,
                  keyboardType: TextInputType.text,
                  obscureText: _isSecure,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlue.withValues(alpha: 0.7),
                    hintText: "password",
                    labelText: 'password kamu',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.lock, color: Colors.teal),
                    suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _Confrim,
                  keyboardType: TextInputType.text,
                  obscureText: _isSecure,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightBlue.withValues(alpha: 0.7),
                    hintText: "confirmasi",
                    labelText: 'password kamu',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.lock, color: Colors.teal),
                    suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NishaLogin()),
                        );
                      },
                      child: Text('batal'),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TakimHome()),
                        );
                      },
                      child: Text('masuk'),
                    ),
                  ],
                ),
                DropdownMenu(
                  menuHeight: 110,
                  textStyle: TextStyle(),
                  inputDecorationTheme: InputDecorationTheme(
                    suffixIconColor: Colors.blueGrey,
                    filled: true,fillColor: Colors.blueAccent,
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  dropdownMenuEntries: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
