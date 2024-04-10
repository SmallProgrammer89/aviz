import 'package:aviz_application/constants/custom_color.dart';

import 'package:aviz_application/widgets/switcher_card.dart';
import 'package:aviz_application/widgets/titlle_widget.dart';
import 'package:flutter/material.dart';

class AddAvizForthStep extends StatefulWidget {
  AddAvizForthStep({super.key, required this.valueNotifier});
  ValueNotifier valueNotifier;
  @override
  State<AddAvizForthStep> createState() => _AddAvizForthStepState();
}

class _AddAvizForthStepState extends State<AddAvizForthStep> {
  ValueNotifier _isExatlyLocation = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TitleWidget(title: "موقعیت مکانی", icon: "map"),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      ".بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما حفظ شود",
                      style: TextStyle(
                        color: Color(0xff98A2B3),
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7.5),
                        child: Image.asset(
                          "images/map_image.png",
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.5),
                          color: Color.fromARGB(24, 230, 0, 35),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 40,
                          width: 180,
                          decoration: BoxDecoration(
                            color: CustomColor.customRed,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'گرگان،صیاد شیرازی',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Image.asset("images/location_icon.png")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ValueListenableBuilder(
                    valueListenable: _isExatlyLocation,
                    builder: (context, value, child) => SwitcherCard(
                      title: "موقعیت دقیق نقشه نمایش داده شود؟",
                      switcher: _isExatlyLocation,
                      isMargin: false,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.customRed,
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 50)),
                        onPressed: () {
                          widget.valueNotifier.value = 4;
                        },
                        child: Text(
                          "بعدی",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
