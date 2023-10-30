import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailControler = TextEditingController().obs;
  final passwordControler = TextEditingController().obs;

  void loginapi() async {
try{
    final response = await post(Uri.parse('https://reqres.in/api/login'),
    body: {
      'email' : emailControler.value.text,
      'password' : passwordControler.value.text
    });

    var data = jsonDecode(response.body);

    print(response.statusCode);
    print(data);

    if(response.statusCode == 200) {
      
Get.snackbar('Login Successful', 'Congratulations');
    }else {
      Get.snackbar('Login Failed', data['error']);
    }
}catch (e){
Get.snackbar('Exception', e.toString());
}

    
  }
}
