import 'package:employee_management_suppachai/modules/screen/HomeScreen/view/home_screen.dart';
import 'package:employee_management_suppachai/route.dart';
import 'package:employee_management_suppachai/services/api_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ApiService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: AppRoutes.routes,
    );
  }
}
