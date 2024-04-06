import 'package:aviz_application/constants/custom_color.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  ContainerButton(
      {super.key,
      required this.title,
      this.onTap,
      required this.color,
      this.leading});
  String title;
  String color;
  String? leading;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 7.5),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade200, width: 1.3),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/${color}_arrow_left_icon.png"),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            const SizedBox(width: 10),
            Visibility(
                child: Image.asset("images/${leading}_icon.png"),
                visible: leading != null)
          ],
        ),
      ),
    );
  }
}
