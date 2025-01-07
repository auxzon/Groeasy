import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/controller/TaskCompleteScreen/TaskCompleteScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class TaskStatusScreen extends StatelessWidget {
  const TaskStatusScreen({super.key,required this.status});

  final bool status;
  @override
  Widget build(BuildContext context) {
    TaskStatusScreenController taskCompleteScreenController = Get.put(TaskStatusScreenController());
    return Commonscaffold(
      body: Center(
        child: Lottie.asset(status?"images3/paymentsucess.json":"images3/PaymentFailed.json"),
      ),
    );
  }
}
