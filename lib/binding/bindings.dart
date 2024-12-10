import 'package:flutter_algorithm_task/controllers/controllers.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NumberController());
  }
}
