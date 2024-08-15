import 'package:get/get.dart';
import 'binding_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BindingController>;
  }
}
