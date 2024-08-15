import 'package:get/get.dart';

class LoginController extends GetxController {
  final userValue = 'huy';
  final passValue = '123';

  var username = ''.obs;
  var password = ''.obs;

  bool validateForm() {
    if (username.value.isEmpty) return false;
    if (password.value.isEmpty) return false;
    if (userValue != username.value) return false;
    if (passValue != password.value) return false;

    return true;
  }
}
