import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
     home: Home_Page(),
  ));
}

class Convertor extends StatefulWidget {
  @override
  const Convertor({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConvertorState();
  }
}

class ConvertorState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    //Total Page Size
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
