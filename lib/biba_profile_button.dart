import 'package:aplikasi_sholat_jurnal/biba_profile_page.dart';
import 'package:flutter/material.dart';

class BibaProfileButton extends StatelessWidget {
  const BibaProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'biba',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            Text('biba23@gmail.com'),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BibaProfilePage()),
            );
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.indigo),
            fixedSize: WidgetStatePropertyAll(Size(90, 20)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
          child: Text('profil', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
