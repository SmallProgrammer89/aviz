import 'package:aviz_application/widgets/container_button.dart';
import 'package:flutter/material.dart';

class SecondStep extends StatefulWidget {
  SecondStep(
      {super.key,
      required this.thirthStepSubjectSell,
      required this.stepCount});
  ValueNotifier thirthStepSubjectSell;
  ValueNotifier stepCount;
  @override
  State<SecondStep> createState() => _SecondStepState();
}

class _SecondStepState extends State<SecondStep> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ContainerButton(
            title: "فروش آپارتمان",
            color: "red",
            onTap: () {
              widget.thirthStepSubjectSell.value = "فروش آپارتمان";
              widget.stepCount.value = 2;
            },
          ),
          ContainerButton(
            title: "فروش خانه و ویلا",
            color: "red",
            onTap: () {
              widget.thirthStepSubjectSell.value = "فروش خانه و ویلا";
              widget.stepCount.value = 2;
            },
          ),
          ContainerButton(
            title: "فروش زمین کلنگی",
            color: "red",
            onTap: () {
              widget.thirthStepSubjectSell.value = "فروش زمین کلنگی";
              widget.stepCount.value = 2;
            },
          ),
        ],
      ),
    );
  }
}
