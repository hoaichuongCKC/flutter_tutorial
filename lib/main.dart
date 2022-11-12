import 'package:flutter/material.dart';
// import 'package:flutter_tutorial/pages/number_random/number_radom_page.dart';
import 'package:flutter_tutorial/pages/login/login_ui.dart';

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
      title: 'Flutter Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginUI(),
    );
  }
}
