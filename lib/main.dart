import 'package:flutter/material.dart';
import 'package:wallpaper_app/navbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Navbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
