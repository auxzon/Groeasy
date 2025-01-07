import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/Color/Colordata.dart';

class CustomStepper extends StatelessWidget {
  final int stepCount;
  final int currentStep;
  final List<String> stepLabels;
  final Color activeColor;
  final Color inactiveColor;
  final Color dividerColor;

  const CustomStepper({
    super.key,
    required this.stepCount,
    required this.currentStep,
    required this.stepLabels,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
    this.dividerColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(stepCount * 2 - 1, (index) {
        if (index % 2 == 0) {
          // Step Circle
          int stepIndex = index ~/ 2;
          bool isActive = stepIndex < currentStep;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? activeColor : inactiveColor,
                ),
                child: Center(
                    child: isActive
                        ? const Icon(
                      Icons.check,
                      color: ColorData.whitecolor,
                    )
                        : const Icon(
                      Icons.close,
                      color: ColorData.whitecolor,
                    )),
              ),
              Textwithfont(
                text: stepLabels[stepIndex],
                fontSize: 12,
                color: isActive ? activeColor : inactiveColor,
              ),
            ],
          );
        } else {
          // Divider
          return Expanded(
            child: Container(
              height: 2,
              color: dividerColor,
            ),
          );
        }
      }),
    );
  }
}