import 'package:flutter/material.dart';

class SegurancaPrivacidade extends StatefulWidget {
  const SegurancaPrivacidade({super.key});

  @override
  State<SegurancaPrivacidade> createState() => _SegurancaPrivacidadeState();
}

class _SegurancaPrivacidadeState extends State<SegurancaPrivacidade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Segurança e Privacidade",
          style: TextStyle(fontSize: 18.0),
        ),
        centerTitle: true,
        // backgroundColor: Color(0xFFABC4AA),
      ),
      body: SafeArea(child: Center(child: Text("Segurança e Privacidade"))),
    );
  }
}
