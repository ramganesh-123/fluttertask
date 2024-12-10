import 'package:flutter/material.dart';
import 'package:flutter_algorithm_task/binding/bindings.dart';
import 'package:flutter_algorithm_task/styles.dart';
import 'package:flutter_algorithm_task/views/mainpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Fluttertask());
}

class Fluttertask extends StatelessWidget {
  const Fluttertask({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Highlighter',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: AppColors.appColorScheme,
      ),
      initialBinding: AppBindings(),
      home: const NumberGridScreen(),
    );
  }
}
