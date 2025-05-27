import 'package:flutter/material.dart';
import 'package:trilhaapp_navigation/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        appBarTheme: AppBarTheme(
          color: Color(0xFF222831),
          titleTextStyle: TextStyle(color: Color(0xFFDFD0B8)),
          iconTheme: IconThemeData(color: Color(0xFFDFD0B8)),
        ),
        scaffoldBackgroundColor: Color(0xFF222831),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFDFD0B8),
          unselectedIconTheme: IconThemeData(color: Color(0xFF948979)),
          unselectedItemColor: Color(0xFF948979),
          selectedIconTheme: IconThemeData(color: Color(0xFF393E46)),
          selectedItemColor: Color(0xFF393E46),
        ),

        // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF222831)),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const LoginPage(),
    );
  }
}
