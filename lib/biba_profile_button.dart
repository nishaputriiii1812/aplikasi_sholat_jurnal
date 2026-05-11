import 'package:aplikasi_sholat_jurnal/biba_profile_page.dart';
import 'package:flutter/material.dart';

class BibaProfileButton extends StatelessWidget {
  const BibaProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/chlu.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Nisha"), Text("nishaaputrii20gmail.com")],
            ),
          ],
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            fixedSize: WidgetStatePropertyAll(Size(100, 35)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BibaProfilePage()),
            );
          },
          child: Text("Masuk"),
        ),
      ],
    );
  }
}
