import 'package:flutter/material.dart';
import 'package:flutter_algorithm_task/controllers/controllers.dart';
import 'package:flutter_algorithm_task/views/numbers_item.dart';
import 'package:flutter_algorithm_task/views/rule_selector.dart';
import 'package:get/get.dart';

class NumberGridScreen extends StatelessWidget {
  const NumberGridScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final NumberController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Highlighter'),
      ),
      body: Column(
        children: [
          RuleSelector(
            selectedRule: controller.selectedRule.value,
            onRuleChange: controller.updateRule,
          ),
          Expanded(
            child: Obx(() {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 10,
                ),
                itemCount: controller.numbers.length,
                itemBuilder: (context, index) {
                  return NumberItem(number: controller.numbers[index]);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
