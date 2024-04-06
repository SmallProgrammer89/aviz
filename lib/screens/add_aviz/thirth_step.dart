import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/add_aviz/forth_step.dart';
import 'package:aviz_application/widgets/step_line_indicator.dart';
import 'package:aviz_application/widgets/switcher_card.dart';
import 'package:aviz_application/widgets/titlle_widget.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import 'package:persian_number_utility/persian_number_utility.dart';

class AddAvizStepthirth extends StatefulWidget {
  AddAvizStepthirth(
      {super.key, required this.category, required this.stepCounter});
  String category;
  ValueNotifier stepCounter;
  @override
  State<AddAvizStepthirth> createState() => _AddAvizStepthirthState();
}

class _AddAvizStepthirthState extends State<AddAvizStepthirth> {
  ValueNotifier roomNumberNotifier = ValueNotifier(1);
  ValueNotifier scopeNumberNotifier = ValueNotifier(20);
  ValueNotifier buildyearNotifier = ValueNotifier(1402);
  ValueNotifier floorNumberNotifier = ValueNotifier(1);
  int roomNumberChanger = 1;
  int scopeNumberChanger = 20;
  int buildyearNumberChanger = 1360;
  int floorNumberChanger = 1;

  ValueNotifier elvator = ValueNotifier(false);

  ValueNotifier storage = ValueNotifier(false);
  ValueNotifier parking = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(width: double.infinity),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: TitleWidget(title: "دسته بندی آویز", icon: "category")),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'محدوده ملک',
                        style:
                            TextStyle(color: Color(0xff98A2B3), fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        cursorColor: CustomColor.customRed,
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8)),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          hintText: 'خیابان صیاد شیرازی',
                          hintStyle: TextStyle(
                            color: Color(0xFFD0D5DD),
                            fontSize: 16,
                            fontFamily: 'shabnam',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'دسته بندی',
                        style:
                            TextStyle(color: Color(0xff98A2B3), fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: CustomColor.customGrey)),
                        child: Text(
                          widget.category,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Divider(
              color: CustomColor.customGrey,
              thickness: 1.7,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: TitleWidget(title: "ویژگی آویز", icon: "property")),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'تعداد اتاق',
                        style:
                            TextStyle(color: Color(0xff98A2B3), fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => _getDialog(
                                roomNumberChanger,
                                roomNumberNotifier,
                                1,
                                10,
                                1)),
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset("images/scroll_icon.png"),
                              Spacer(),
                              ValueListenableBuilder(
                                valueListenable: roomNumberNotifier,
                                builder: (context, value, child) {
                                  return Text(
                                    '${value}'.toPersianDigit(),
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: CustomColor.customGrey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'سال ساخت',
                        style:
                            TextStyle(color: Color(0xff98A2B3), fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => _getDialog(
                                buildyearNumberChanger,
                                buildyearNotifier,
                                1340,
                                1402,
                                1)),
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset("images/scroll_icon.png"),
                              Spacer(),
                              ValueListenableBuilder(
                                valueListenable: buildyearNotifier,
                                builder: (context, value, child) {
                                  return Text(
                                    '${value}'.toPersianDigit(),
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: CustomColor.customGrey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'متراژ',
                        style:
                            TextStyle(color: Color(0xff98A2B3), fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => _getDialog(
                                scopeNumberChanger,
                                scopeNumberNotifier,
                                20,
                                5000,
                                10)),
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset("images/scroll_icon.png"),
                              Spacer(),
                              ValueListenableBuilder(
                                valueListenable: scopeNumberNotifier,
                                builder: (context, value, child) {
                                  return Text(
                                    '${value}'.toPersianDigit(),
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: CustomColor.customGrey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'طبقه',
                        style:
                            TextStyle(color: Color(0xff98A2B3), fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => _getDialog(
                                floorNumberChanger,
                                floorNumberNotifier,
                                1,
                                5,
                                1)),
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset("images/scroll_icon.png"),
                              Spacer(),
                              ValueListenableBuilder(
                                valueListenable: floorNumberNotifier,
                                builder: (context, value, child) {
                                  return Text(
                                    '${value}'.toPersianDigit(),
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: CustomColor.customGrey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: TitleWidget(title: "امکانات آویز", icon: "facilities")),
          ValueListenableBuilder(
            valueListenable: elvator,
            builder: (context, value, child) {
              return SwitcherCard(
                  title: "آسانسور", switcher: elvator, isMargin: true);
            },
          ),
          ValueListenableBuilder(
            valueListenable: elvator,
            builder: (context, value, child) {
              return SwitcherCard(
                  title: "پارکینگ", switcher: parking, isMargin: true);
            },
          ),
          ValueListenableBuilder(
            valueListenable: elvator,
            builder: (context, value, child) {
              return SwitcherCard(
                  title: "انباری", switcher: storage, isMargin: true);
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.customRed,
                    minimumSize: Size(MediaQuery.of(context).size.width, 50)),
                onPressed: () {
                  widget.stepCounter.value = 3;
                },
                child: Text(
                  "بعدی",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget _getDialog(int numberChanger, ValueNotifier valueNotifier,
      int minValue, int maxValue, int step) {
    return StatefulBuilder(
      builder: (BuildContext context, setState) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NumberPicker(
                    value: numberChanger,
                    selectedTextStyle:
                        TextStyle(color: CustomColor.customRed, fontSize: 20),
                    itemCount: 5,
                    step: step,
                    minValue: minValue,
                    maxValue: maxValue,
                    onChanged: (value) {
                      setState(() {
                        numberChanger = value;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        valueNotifier.value = numberChanger;
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'انتخاب',
                        style: TextStyle(
                            color: CustomColor.customRed, fontSize: 15),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'بستن',
                        style: TextStyle(
                            color: CustomColor.customRed, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
