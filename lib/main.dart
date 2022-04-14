import 'package:flutter/material.dart';
import 'package:toptop_app/constants.dart';
import 'package:toptop_app/views/screens/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TopTop App',
      theme: customThemeData,
      home: const TabScreen(),
    );
  }
}
