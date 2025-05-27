import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados Cadastrais", style: TextStyle(fontSize: 18.0)),
        centerTitle: true,
        // backgroundColor: Color(0xFFA9907E),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(color: Color(0xFF393E46)), // ALTERAR FUTURAMENTE
              SizedBox(height: 10.0),
              Text(
                "Nome:",
                style: TextStyle(
                  color: Color(0xFFDFD0B8),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                controller: nomeController,
                style: TextStyle(color: Color(0xFFFFFAEC)),
              ),
              TextButton(
                onPressed: () {
                  debugPrint(nomeController.text);
                },
                child: Text("Salvar"),
              ),
              SizedBox(height: 10.0),
              Text(
                "Data de nascimento:",
                style: TextStyle(
                  color: Color(0xFFDFD0B8),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                controller: dataNascimentoController,
                style: TextStyle(color: Color(0xFFFFFAEC)),
                readOnly: true,
                onTap: () async {
                  var data = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900, 1, 1),
                    lastDate: DateTime.now(),
                  );
                  debugPrint(data as String?);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
