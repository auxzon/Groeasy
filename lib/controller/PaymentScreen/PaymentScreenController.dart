import 'package:auxzonfoodapp/controller/Bottmnavigation/BottomNavgationBarController.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:auxzonfoodapp/view/TaskStatusScreen/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:phonepe_payment_sdk/phonepe_payment_sdk.dart';

import '../../common/Navigation/navigation.dart';
import '../AddressScreen/AddressScreenController.dart';

class PaymentController extends GetxController {
  String environmentValue = "SANDBOX";
  String appId = "";
  String merchantId = "PGTESTPAYUAT86";
  bool enableLogging = true;

  String saltKey = "96434309-7796-489d-8924-ab56988a6076";
  String saltIndex = "1";

  String body = "";
  String callback = "";
  String checksum = "";
  String packageName = "";
  String apiEndPoint = "/pg/v1/pay";

  var result = ''.obs;
  var error = ''.obs;
  var status = ''.obs;
  var isInitialized = false.obs;

  @override
  void onInit() async {
    super.onInit();
    await initPayment();
    body = getChecksum();
  }

  Future<void> initPayment() async {
    try {
      var val = await PhonePePaymentSdk.init(environmentValue, appId, merchantId, enableLogging);
      result.value = 'PhonePe SDK Initialized - $val';
      isInitialized.value = true;
    } catch (e) {
      handleError(e);
      isInitialized.value = false;
    }
  }

  void handleError(dynamic error) {
    this.error.value = error.toString();
    result.value = "Error: $error";
  }

  Future<void> startTransaction(BuildContext context) async {
    if (!isInitialized.value) {
      result.value = "Payment SDK is not initialized.";
      return;
    }

    try {
      var response = await PhonePePaymentSdk.startTransaction(body, callback, checksum, packageName);

      if (response != null) {
        status.value = response['status']?.toString() ?? 'UNKNOWN';
        error.value = response['error']?.toString() ?? '';

        if (status.value == 'SUCCESS') {
          result.value = "Payment Successful!";
          Get.delete<PaymentController>();
          Get.delete<BottomNavigationBarController>();
          Get.delete<AddressScreenController>();
          Navi.to(TaskStatusScreen(status: true),
              transition: Transition.leftToRightWithFade);
        } else {
          result.value = "Payment Failed - Status: ${status.value}, Error: ${error.value}";
          Get.delete<AddressScreenController>();
        }
      } else {
        result.value = "Transaction Failed. Response is null.";
        Get.delete<AddressScreenController>();
      }
    } catch (e) {
      handleError(e);
    }
  }

  String getChecksum() {
    final reqData = {
      "merchantId": merchantId,
      "merchantTransactionId": "t_52554",
      "merchantUserId": "MUID123",
      "amount": 1,
      "callbackUrl": callback,
      "mobileNumber": "9999999999",
      "paymentInstrument": {"type": "PAY_PAGE"}
    };
    String base64body = base64.encode(utf8.encode(json.encode(reqData)));
    checksum = "${sha256.convert(utf8.encode(base64body + apiEndPoint + saltKey)).toString()}###$saltIndex";
    return base64body;
  }

}
