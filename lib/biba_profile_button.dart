import 'package:flutter/material.dart';

class BibaProfileButton extends StatelessWidget {
  const BibaProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.indigo),
            fixedSize: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          child: Text('profil', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
