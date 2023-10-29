import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_practice_apk/login_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GETx Tutorial"),
      ),
      body: const Column(children: []),
    );
  }
}
