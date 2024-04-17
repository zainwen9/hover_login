import 'package:flutter/material.dart';

import 'SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:  Color(0xFFE9EFF3),

        inputDecorationTheme: InputDecorationTheme(
          hoverColor: Colors.white,
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder:InputBorder.none,
        ),

        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}
