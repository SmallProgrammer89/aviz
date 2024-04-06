import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/add_aviz/fifth_step.dart';
import 'package:aviz_application/screens/add_aviz/first_step.dart';
import 'package:aviz_application/screens/add_aviz/forth_step.dart';
import 'package:aviz_application/screens/add_aviz/second_atep.dart';
import 'package:aviz_application/screens/add_aviz/thirth_step.dart';
import 'package:aviz_application/widgets/step_line_indicator.dart';
import 'package:flutter/material.dart';

class AddAvizScreen extends StatefulWidget {
  const AddAvizScreen({super.key});

  @override
  State<AddAvizScreen> createState() => _AddAvizScreenState();
}

class _AddAvizScreenState extends State<AddAvizScreen> {
  ValueNotifier stepcounter = ValueNotifier(0);
  ValueNotifier thirthStepSubject = ValueNotifier("");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/close_icon.png'),
        actions: [
          GestureDetector(
              onTap: () {
                if (stepcounter != 1) {
                  stepcounter.value = stepcounter.value - 1;
                }
              },
              child: Image.asset('images/arrow_right_icon.png'))
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(children: [
            WidgetSpan(
                child: Image.asset("images/logo_type.png"),
                alignment: PlaceholderAlignment.middle),
            TextSpan(
              text: "دسته بندی",
              style: TextStyle(
                fontFamily: "shabnam",
                color: CustomColor.customRed,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            )
          ]),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            ValueListenableBuilder(
              valueListenable: stepcounter,
              builder: (context, value, child) =>
                  StepLineIndicatior(stepCount: value),
            ),
            const SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(
              valueListenable: stepcounter,
              builder: (context, value, child) => _getSteps(value),
            )
          ],
        ),
      )),
    );
  }

  Widget _getSteps(int stepNumber) {
    switch (stepNumber) {
      case 0:
        return FirstStep(valueNotifier: stepcounter);
      case 1:
        return SecondStep(
          stepCount: stepcounter,
          thirthStepSubjectSell: thirthStepSubject,
        );
      case 2:
        return ValueListenableBuilder(
          valueListenable: thirthStepSubject,
          builder: (context, value, child) =>
              AddAvizStepthirth(category: value, stepCounter: stepcounter),
        );
      case 3:
        return AddAvizForthStep(valueNotifier: stepcounter);
      case 4:
        return AddAvizFifthStep();
      default:
        return FirstStep(valueNotifier: stepcounter);
    }
  }
}
