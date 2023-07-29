import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

//runner
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light, // ThemeMode.dark
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      // initialRoute: "/home",
      routes: {
        "/": (context)=> LoginPage(),
        "/home": (context)=> HomePage(),
        "/login": (context)=> LoginPage()
      },
    );
  }
}
