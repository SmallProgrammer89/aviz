import 'package:aviz_application/constants/custom_color.dart';
import 'package:flutter/material.dart';

class StepLineIndicatior extends StatelessWidget {
  StepLineIndicatior({super.key, required this.stepCount});
  int stepCount;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: CustomColor.customRed,
      height: 4,
      width: MediaQuery.of(context).size.width / 5 * stepCount,
    );
  }
}
