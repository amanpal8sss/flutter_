import 'package:flutter/material.dart';
import 'package:pob_ui/core/navigation.dart';
import './core/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      routes:appRoutes,
    );
  }
}
