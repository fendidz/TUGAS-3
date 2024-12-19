import 'package:flutter/material.dart';
import 'LAYOUT/HOME/homepagewithmenu.dart';

// ini adalah Function untuk runing aplikasi
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}