import 'package:flutter/material.dart';
import 'package:flutterapp/pages/LoginPage.dart';

void main() => runApp(QaymaIAApp());

class QaymaIAApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),

      //quitar banner de DEBUG en el emulador
      debugShowCheckedModeBanner: false,
    );
  }
}
