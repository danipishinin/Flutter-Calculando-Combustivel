import 'package:calcular_combustivel/pages/home.page.dart';
import 'package:calcular_combustivel/submit-form.dart';
import 'package:calcular_combustivel/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'input.widget.dart';
import 'loading-button.widget.dart';
import 'logo.widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Comparando Combustíveis',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}



