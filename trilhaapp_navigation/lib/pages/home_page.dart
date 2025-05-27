import 'package:flutter/material.dart';
import 'package:trilhaapp_navigation/pages/cadastro.dart';
import 'package:trilhaapp_navigation/pages/configuracoes.dart';
import 'package:trilhaapp_navigation/pages/page_one.dart';
import 'package:trilhaapp_navigation/pages/page_three.dart';
import 'package:trilhaapp_navigation/pages/page_two.dart';
import 'package:trilhaapp_navigation/pages/seguranca_privacidade.dart';
import 'package:trilhaapp_navigation/pages/sobre.dart';

class MyHomePage extends StatefulWidget {
  final dynamic title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int posicaoPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff000000),S
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(fontSize: 18.0)),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF948979),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Principal",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Divider(),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                child: Text(
                  "Cadastro",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 14.0),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Configuracoes()),
                  );
                },
                child: Text(
                  "Configurações",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 14.0),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SegurancaPrivacidade(),
                    ),
                  );
                },
                child: Text(
                  "Segurança e privacidade",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 14.0),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sobre()),
                  );
                },
                child: Text(
                  "Sobre",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 14.0),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPage = value;
                  });
                },
                children: [PageOne(), PageTwo(), PageThree()],
              ),
            ),
            BottomNavigationBar(
              onTap: (value) {
                pageController.jumpToPage(value);
              },
              currentIndex: posicaoPage,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet),
                  label: "Wallet",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
