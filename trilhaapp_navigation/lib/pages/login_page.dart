import 'package:flutter/material.dart';
import 'package:trilhaapp_navigation/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "");
  var passwdController = TextEditingController(text: "");
  bool isObcureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF313131),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30.0),
                    Image.asset(
                      "assets/logo/flutterco_logo.png",
                      width: 200,
                      semanticLabel: "A logotype",
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Já tem cadastro?",
                      style: TextStyle(fontSize: 30, color: Color(0xFFDFD0B8)),
                    ),
                    Text(
                      "Faça seu login e make the change._",
                      style: TextStyle(fontSize: 18, color: Color(0xFFDFD0B8)),
                    ),
                    SizedBox(height: 60.0),
                    TextField(
                      style: TextStyle(color: Color(0xFFFFFAEC)),
                      onChanged: (value) {
                        emailController.text = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          // borderSide: BorderSide(color: Color(0xffff0000)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          // borderSide: BorderSide(color: Color(0xff0000ff)),
                        ),
                        contentPadding: EdgeInsets.only(top: 12.0),
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: Color(0x8FDFD0B8),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Color(0x8FDFD0B8)),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      style: TextStyle(color: Color(0xFFFFFAEC)),
                      onChanged: (value) {
                        passwdController.text = value;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isObcureText,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          // borderSide: BorderSide(color: Color(0xffff0000)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          // borderSide: BorderSide(color: Color(0xff0000ff)),
                        ),
                        contentPadding: EdgeInsets.only(top: 12.0),
                        prefixIcon: Icon(Icons.lock_outline),
                        prefixIconColor: Color(0x8FDFD0B8),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color(0x8FDFD0B8)),
                        suffixIconColor: Color(0x8FDFD0B8),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObcureText = !isObcureText;
                            });
                          },
                          child: Icon(
                            isObcureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          if (emailController.text.trim() ==
                                  "email@example.com" &&
                              passwdController.text.trim() == "123") {
                            debugPrint("Success");
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return MyHomePage(title: "Home Page");
                                },
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Color(0xFFEEDF7A),
                                content: Center(
                                  child: Text(
                                    "Email or password is incorrect.\nPlease verify and try again.",
                                    style: TextStyle(color: Color(0xFF343131)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10.0),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll<Color>(
                            Color(0xFFDFD0B8),
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFF393E46),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Column()),
                    Text(
                      "Esqueci minha senha",
                      style: TextStyle(color: Color(0xFFEEDF7A)),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      "Criar conta",
                      style: TextStyle(color: Color(0xFFFFFAEC)),
                    ),
                    SizedBox(height: 100.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
