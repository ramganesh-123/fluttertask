import 'package:flutter/material.dart';
import 'package:flutter_algorithm_task/controllers/controllers.dart';
import 'package:get/get.dart';

class RuleSelector extends StatelessWidget {
  final String selectedRule;
  final ValueChanged<String> onRuleChange;

  RuleSelector(
      {super.key, required this.selectedRule, required this.onRuleChange});
  final NumberController ruleController = Get.put(NumberController());

  @override
  Widget build(BuildContext context) {
    final rules = ['Odd Numbers', 'Even Numbers', 'Prime Numbers', 'Fibonacci'];

    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => DropdownButton<String>(
              value: ruleController.selectedRule.value,
              isExpanded: true,
              onChanged: (value) {
                if (value != null) {
                  ruleController.updateRule(value);
                }
              },
              items: rules.map((rule) {
                return DropdownMenuItem(
                  value: rule,
                  child: Text(rule),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
