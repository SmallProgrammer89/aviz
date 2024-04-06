import 'package:aviz_application/widgets/container_button.dart';
import 'package:flutter/material.dart';

class FirstStep extends StatefulWidget {
  FirstStep({super.key, required this.valueNotifier});
  ValueNotifier valueNotifier;

  @override
  State<FirstStep> createState() => _FirstStepState();
}

class _FirstStepState extends State<FirstStep> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ContainerButton(
            title: "اجاره مسکونی",
            color: "red",
          ),
          ContainerButton(
            title: "فروش مسکونی",
            color: "red",
            onTap: () {
              widget.valueNotifier.value = 1;
            },
          ),
          ContainerButton(
            title: "فروش دفاتر اداری و تجاری",
            color: "red",
          ),
          ContainerButton(
            title: "اجاره دفاتی اداری و تجاری",
            color: "red",
          ),
          ContainerButton(
            title: "اجاره کوتاه مدت",
            color: "red",
          ),
          ContainerButton(
            title: "پروژه ساخت و ساز",
            color: "red",
          ),
        ],
      ),
    );
  }
}
