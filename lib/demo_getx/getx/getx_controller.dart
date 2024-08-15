import 'package:get/get.dart';

class GetXController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
  }

  decrease() {
    count--;
  }

  String valueText = 'Show';

  updateValue(){
    valueText = valueText == 'Show' ? 'Hide' : 'Show';
    update();
  }
}