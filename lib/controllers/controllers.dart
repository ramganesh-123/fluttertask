import 'package:flutter_algorithm_task/models/models.dart';
import 'package:get/get.dart';

class NumberController extends GetxController {
  final RxList<NumberModel> numbers = <NumberModel>[].obs;
  final RxString selectedRule = 'Odd Numbers'.obs;

  @override
  void onInit() {
    super.onInit();
    updateNumbers();
  }

  void updateRule(String rule) {
    selectedRule.value = rule;
    updateNumbers();
  }

  void updateNumbers() {
    final List<NumberModel> updatedNumbers = List.generate(100, (index) {
      int num = index + 1;
      bool highlight = false;

      if (selectedRule.value == 'Odd Numbers') {
        highlight = num % 2 != 0;
      } else if (selectedRule.value == 'Even Numbers') {
        highlight = num % 2 == 0;
      } else if (selectedRule.value == 'Prime Numbers') {
        highlight = isPrime(num);
      } else if (selectedRule.value == 'Fibonacci') {
        highlight = isFibonacci(num);
      }

      return NumberModel(number: num, isHighlighted: highlight);
    });

    numbers.assignAll(updatedNumbers);
  }

  bool isPrime(int num) {
    if (num < 2) return false;
    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) return false;
    }
    return true;
  }

  bool isFibonacci(int num) {
    int a = 0, b = 1, temp;
    while (b <= num) {
      if (b == num) return true;
      temp = b;
      b = a + b;
      a = temp;
    }
    return false;
  }
}
