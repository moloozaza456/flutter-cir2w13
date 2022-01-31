import 'package:flutter/material.dart';
import 'screen/app_view.dart';

void main() {
  // run call MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // set

  @override // method override ready
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: AppView(),
    ); // Build UI
  }
}

