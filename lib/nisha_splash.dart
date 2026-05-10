import 'dart:async';

import 'package:aplikasi_sholat_jurnal/nisha_login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer t;
  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 2),
          (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NishaLogin()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    t.cancel();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME NISHA",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    color: Colors.black,
                    blurRadius: 2,
                    spreadRadius: 3,
                  ),
                ],
              ),
            ),
            Text(
              "MOHON TUNGGU",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 23,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    color: Colors.black,
                    blurRadius: 2,
                    spreadRadius: 3,
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/img_2.png', height: 100),
            Text(
              "SABAR BESTIEE",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    color: Colors.black,
                    blurRadius: 2,
                    spreadRadius: 3,
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
