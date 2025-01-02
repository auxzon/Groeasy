import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/controller/TaskCompleteScreen/TaskCompleteScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class TaskCompleteScreen extends StatelessWidget {
  const TaskCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TaskCompleteScreenController taskCompleteScreenController = Get.put(TaskCompleteScreenController());
    return Commonscaffold(
      body: Center(
        child: Lottie.asset("images3/paymentsucess.json"),
      ),
    );
  }
}
