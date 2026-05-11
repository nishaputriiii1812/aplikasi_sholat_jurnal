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
      body: Column(
        children: [
          Container(
            height: 150,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 90),
                ClipOval(
                  child: Image.asset(
                    'assets/images/',
                    height: 95,
                    width: 95,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Text('biba'),
          Text('biba@gmail.com'),
        ],
      ),
    );
  }
}
