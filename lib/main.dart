import 'package:amazon_clone_ui/Screen/Dashboard.dart';
import 'package:amazon_clone_ui/Screen/Splashscreen.dart';
import 'package:flutter/material.dart';

import 'Screen/choose_language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
    );
  }
}

