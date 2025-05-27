import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre", style: TextStyle(fontSize: 18.0)),
        centerTitle: true,
        // backgroundColor: Color(0xFF675D50),
      ),
      body: SafeArea(child: Center(child: Text("Sobre"))),
    );
  }
}
