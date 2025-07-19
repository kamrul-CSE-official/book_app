import 'package:flutter/material.dart';

class english_poem extends StatefulWidget {
  const english_poem({super.key});

  @override
  State<english_poem> createState() => _english_poemState();
}

class _english_poemState extends State<english_poem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("English"),
      ),
    );
  }
}
