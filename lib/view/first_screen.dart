import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:network_connectivity_check/view/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        centerTitle: true,
        title: const Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const SecondScreen());
          },
          child: const Text('Go to Next Screen'),
        ),
      ),
    );
  }
}
