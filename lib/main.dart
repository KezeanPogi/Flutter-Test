import 'package:flutter/material.dart';
import 'package:module2_4_lab_exercise/socialmedia.dart';
import 'package:module2_4_lab_exercise/views/loginpage.dart';
import 'package:module2_4_lab_exercise/views/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
