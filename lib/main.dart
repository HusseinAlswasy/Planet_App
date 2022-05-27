import 'package:flutter/material.dart';
import 'package:planet_app_ui/constent/constent.dart';
import 'package:planet_app_ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planet App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
