import 'package:flutter/material.dart';

class BibaProfilePage extends StatefulWidget {
  const BibaProfilePage({super.key});

  @override
  State<BibaProfilePage> createState() => _BibaProfilePageState();
}

class _BibaProfilePageState extends State<BibaProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(children: [Text('Profile')]),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 14),
            ClipOval(
              child:
              Image.asset(
                'assets/images/karina.jpg',
                height: 95,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),

            Text('carmen'),
            Text('carmenita@gmail.com'),
          ],
        ),
      ),
    );
  }
}
