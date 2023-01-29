import 'package:flutter/material.dart';
import 'package:form_example/src/pages/home_page.dart';
import 'package:form_example/src/pages/login_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form Example",
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      home: LoginPage(),
    );
  }
}
