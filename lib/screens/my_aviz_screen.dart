import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/widgets/container_button.dart';
import 'package:aviz_application/widgets/titlle_widget.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class MyAvizScreen extends StatefulWidget {
  const MyAvizScreen({super.key});

  @override
  State<MyAvizScreen> createState() => _MyAvizScreenState();
}

class _MyAvizScreenState extends State<MyAvizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'من',
                      style: TextStyle(color: CustomColor.customRed),
                    ),
                    Image.asset("images/logo_with_not_background.png")
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: CustomColor.customGrey,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        cursorColor: CustomColor.customRed,
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: '..جستجو',
                          hintStyle: TextStyle(
                            color: Color(0xFFD0D5DD),
                            fontSize: 16,
                            fontFamily: 'shabnam',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Image.asset("images/search_icon.png")
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: TitleWidget(title: "تصویر آویز", icon: "camera")),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(7.5),
                    border:
                        Border.all(color: CustomColor.customGrey, width: 1.5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: ShapeDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/profile_image.jpg")),
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(45))),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("images/edit_profile_icon.png"),
                                Text(
                                  'نیما زارعی',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: CustomColor.customRed,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "تایید شده",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '09999999999'.toPersianDigit(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: const SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
                child: ContainerButton(
              title: "آگهی های من",
              color: "grey",
              leading: "my_aviz",
            )),
            SliverToBoxAdapter(
                child: ContainerButton(
                    title: "پرداخت های من", color: "grey", leading: "card")),
            SliverToBoxAdapter(
                child: ContainerButton(
                    title: "بازدید های اخیر", color: "grey", leading: "view")),
            SliverToBoxAdapter(
                child: ContainerButton(
              title: "ذخیره شده ها",
              color: "grey",
              leading: "save_2",
            )),
            SliverToBoxAdapter(
                child: ContainerButton(
              title: "تنظیمات",
              color: "grey",
              leading: "setting_2",
            )),
            SliverToBoxAdapter(
                child: ContainerButton(
              title: "پشتیانی قوانین",
              color: "grey",
              leading: "support",
            )),
            SliverToBoxAdapter(
                child: ContainerButton(
              title: "درباره آویز",
              color: "grey",
              leading: "aviz_info",
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "آویز\n 1.1.1",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
