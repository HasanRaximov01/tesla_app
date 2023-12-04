import 'package:figma_13task/screen/home_page.dart';
import 'package:figma_13task/screen/last_page.dart';
import 'package:figma_13task/screen/one_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnePages(),
    );
  }
}