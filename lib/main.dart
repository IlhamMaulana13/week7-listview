import 'package:flutter/material.dart';
import 'package:listview/pages/listview_sparate_horizontal.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Week5",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: MyListviewHorizontal(), // pastikan nama class cocok
      debugShowCheckedModeBanner: false,
    );
  }
}


