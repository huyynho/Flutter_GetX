import 'package:get/get.dart';

class SignUpController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;
  var confirmPass = ''.obs;
  var fullName = ''.obs;
  var address = ''.obs;
  var gender = ''.obs;

  final usernameRegex = RegExp(r'^[a-zA-Z0-9]+$');
  final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*?[0-9])(?=.*[@$!%*?&])$');

  bool validateForm() {
    if (username.value.isEmpty) return false;
    if (password.value.isEmpty) return false;
    if (confirmPass.value.isEmpty) return false;
    if (fullName.value.isEmpty) return false;
    if (address.value.isEmpty) return false;
    if (gender.value.isEmpty) return false;

    if (username.value.length < 6) return false;
    if (password.value.length < 6) return false;
    if (password.value != confirmPass.value) return false;

    if (!usernameRegex.hasMatch(username.value)) return false;
    if (!passwordRegex.hasMatch(password.value)) return false;

    return true;
  }
}
