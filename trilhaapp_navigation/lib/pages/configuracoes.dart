import 'package:flutter/material.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({super.key});

  @override
  State<Configuracoes> createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações", style: TextStyle(fontSize: 18.0)),
        centerTitle: true,
        // backgroundColor: Color(0xFFF3DEBA),
      ),
      body: SafeArea(child: Center(child: Text("Configurações"))),
    );
  }
}
