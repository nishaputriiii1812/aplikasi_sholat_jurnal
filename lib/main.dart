import 'package:flutter/material.dart';

void main (){
  runApp(Nisha());
}

class Nisha extends StatefulWidget {
  const Nisha({super.key});

  @override
  State<Nisha> createState() => _NishaState();
}

class _NishaState extends State<Nisha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,);
  }
}
