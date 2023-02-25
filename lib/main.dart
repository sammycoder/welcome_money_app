import 'package:flutter/material.dart';
import 'package:welcome_money_app/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expnese Tracker',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          brightness: Brightness.dark,
        ),
        home: const TabsController());
  }
}
