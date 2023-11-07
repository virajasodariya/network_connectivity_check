import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:network_connectivity_check/Controller/network_controller.dart';
import 'package:network_connectivity_check/view/no_internet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ConnectivityController connectivityController = Get.put(ConnectivityController());

  @override
  void initState() {
    connectivityController.startMonitoring();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        centerTitle: true,
        title: const Text("Home Screen"),
      ),
      body: GetBuilder<ConnectivityController>(
        builder: (controller) {
          return controller.isOnline
              ? const Center(
                  child: Text(
                    "Home Screen",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              : const NoInternet();
        },
      ),
    );
  }
}
