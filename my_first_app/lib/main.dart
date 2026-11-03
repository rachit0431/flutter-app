import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginForm(),
      },
    );
  }
}