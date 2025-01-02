import 'package:get/get.dart';

class AddressScreenController extends GetxController {
  RxBool codpayment = true.obs;
  RxBool upipayment = false.obs;

  void togglePaymentMethod(bool isCOD) {
    codpayment.value = isCOD;
    upipayment.value = !isCOD;
  }
}