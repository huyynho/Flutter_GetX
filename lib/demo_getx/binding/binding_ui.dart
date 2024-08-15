import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binding_controller.dart';

class BindingUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Binding Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<BindingController>(
              builder: (controller) {
                return Text(
                  'Count: ${controller.count}',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.find<BindingController>().increment();
              },
              child: const Text('+'),
            ),
          ],
        ),
      ),
    );
  }
}
