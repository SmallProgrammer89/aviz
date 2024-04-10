import 'package:aviz_application/constants/custom_color.dart';
import 'package:flutter/material.dart';

class SwitcherCard extends StatefulWidget {
  SwitcherCard({
    super.key,
    required this.title,
    required this.switcher,
    required this.isMargin,
  });
  String title;
  ValueNotifier switcher;
  bool isMargin;

  @override
  State<SwitcherCard> createState() => _SwitcherCardState();
}

class _SwitcherCardState extends State<SwitcherCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.switcher.value = !widget.switcher.value,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: widget.isMargin
            ? EdgeInsets.symmetric(horizontal: 20, vertical: 10)
            : null,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: CustomColor.customGrey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder(
              valueListenable: widget.switcher,
              builder: (context, value, child) => Switch(
                value: widget.switcher.value,
                onChanged: (newValue) {
                  widget.switcher.value = newValue;
                },
                activeTrackColor: CustomColor.customRed,
                trackOutlineColor: MaterialStateColor.resolveWith(
                    (states) => CustomColor.customRed),
                inactiveTrackColor: Colors.white,
                inactiveThumbColor: CustomColor.customRed,
              ),
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
