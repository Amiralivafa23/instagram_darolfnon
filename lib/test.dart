import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: test.map((e) => FlutterLogo()).toList(),
        ),
      ),
    );
  }
}

List<int> test = [
  1, 2, 3
];
