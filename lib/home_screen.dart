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
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("GETx Tutorial"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailControler.value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: controller.passwordControler.value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  controller.loginapi();
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  color: Colors.blue,
                  child: const Center(child:  Text('LogIn')),
                ),
              )
            ]),
      ),
    );
  }
}
