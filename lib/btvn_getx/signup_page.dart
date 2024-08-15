import 'package:demo_getx/btvn_getx/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignUpController controller = Get.put(SignUpController());

    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Username"),
              onChanged: (value) => controller.username.value = value,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
              onChanged: (value) => controller.password.value = value,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Nhập lại Password"),
              obscureText: true,
              onChanged: (value) => controller.confirmPass.value = value,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Họ tên"),
              onChanged: (value) => controller.fullName.value = value,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Địa chỉ"),
              onChanged: (value) => controller.address.value = value,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Giới tính"),
              onChanged: (value) => controller.gender.value = value,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (controller.validateForm()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Đăng ký thành công!"),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 2),
                    ),
                  );
                  Get.to(const LoginPage());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Thông tin không hợp lệ"),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: Text("Đăng ký"),
            ),
          ],
        ),
      ),
    );
  }
}
