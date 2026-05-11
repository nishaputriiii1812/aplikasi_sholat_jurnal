import 'dart:async';

import 'package:aplikasi_sholat_jurnal/nisha_login.dart';
import 'package:flutter/material.dart';


class NishaSplash extends StatefulWidget {
  const NishaSplash({super.key});

  @override
  State<NishaSplash> createState() => _NishaSplashScreenState();
}

class _NishaSplashScreenState extends State<NishaSplash> {
  late Timer n;
  @override
  void initState() {
    n = Timer.periodic(
      const Duration(seconds: 4),
          (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NishaLogin()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    n.cancel();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/gamabar.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MY LOVE APP",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100,),
            Text(
              "Devoled by",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "NISHA",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
