import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget(
      {super.key,
      required this.title,
      required this.icon,
      this.whiteTitleColor = false});
  String icon;
  String title;
  bool whiteTitleColor;
  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.end,
        text: TextSpan(children: [
          TextSpan(
            text: "${title}",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: whiteTitleColor ? Colors.white : Colors.black,
            ),
          ),
          WidgetSpan(child: SizedBox(width: 4)),
          WidgetSpan(
              child: Image.asset('images/${icon}_icon.png'),
              alignment: PlaceholderAlignment.middle),
          WidgetSpan(
            child: SizedBox(
              width: double.infinity, //برای پر کردن کل سطر
            ),
          ),
        ]));
  }
}
