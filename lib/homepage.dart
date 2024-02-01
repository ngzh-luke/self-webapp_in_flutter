import 'package:flutter/material.dart';
import 'package:webapp_in_flutter/mywebview.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Open"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyWeb()));
          },
        ),
      ),
    );
  }
}
