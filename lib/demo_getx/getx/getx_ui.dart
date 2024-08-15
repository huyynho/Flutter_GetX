import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final GetXController getXController = Get.put(GetXController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text(
                  'Count: ${getXController.count}',
                  style: const TextStyle(fontSize: 20),
                )),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                getXController.increment();
              },
              child: const Text('Increment (+)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                getXController.decrease();
              },
              child: const Text('Decrease (-)'),
            ),
            const SizedBox(height: 20),
            GetBuilder<GetXController>(
              builder: (controller) {
                return Text('Text: ${controller.valueText}',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            GetBuilder<GetXController>(
              builder: (controller) {
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.updateValue();
                      },
                      child: const Text('Show/Hide'),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
