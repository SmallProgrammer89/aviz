import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/widgets/container_button.dart';
import 'package:aviz_application/widgets/titlle_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class AvizDetailScreen extends StatefulWidget {
  const AvizDetailScreen({super.key});

  @override
  State<AvizDetailScreen> createState() => _AvizDetailScreenState();
}

class _AvizDetailScreenState extends State<AvizDetailScreen> {
  int _selectedInfo = 0;
  int _publishTime = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset("images/save_icon.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset("images/share_icon.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset("images/information_icon.png"),
                      ),
                      Spacer(),
                      GestureDetector(
                        child: Image.asset("images/arrow_right_icon.png"),
                        onTap: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: const SizedBox(height: 20),
              ),
              SliverToBoxAdapter(
                child: Image.asset("images/product_image_3.png"),
              ),
              SliverToBoxAdapter(
                child: const SizedBox(height: 10),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " ${_publishTime} دقیقه پیش در گرگان ".toPersianDigit(),
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14.5,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 35,
                      decoration: BoxDecoration(
                        color: CustomColor.customGrey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'آپارتمان',
                        style: TextStyle(
                          color: CustomColor.customRed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: const SizedBox(height: 20),
              ),
              SliverToBoxAdapter(
                child: Text(
                  'آپارتمان 500 متری در صیاد شیرازی'.toPersianDigit(),
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: DottedLine(
                    direction: Axis.horizontal,
                    dashColor: Colors.grey.shade200,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  width: double.infinity,
                  child: Expanded(
                    child: ContainerButton(
                      title: "!هشدار های قبل از معامله",
                      color: "grey",
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 70,
                  child: ListView.builder(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedInfo = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 7.5),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 20),
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: CustomColor.customGrey,
                                  width: _selectedInfo == index ? 0 : 1),
                              borderRadius: BorderRadius.circular(5),
                              color: _selectedInfo == index
                                  ? CustomColor.customRed
                                  : Colors.transparent),
                          child: Text(
                            avizInformationTitle[index],
                            style: TextStyle(
                                color: _selectedInfo == index
                                    ? Colors.white
                                    : CustomColor.customRed),
                          ),
                        ),
                      );
                    },
                    itemCount: avizInformationTitle.length,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: avizInformation[_selectedInfo]),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColor.customRed,
                                elevation: 2,
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "گفتگو",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset("images/message_icon.png"),
                                ],
                              )),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              backgroundColor: CustomColor.customRed,
                              elevation: 2,
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "اطلاعات تماس",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset("images/call_icon.png"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> avizInformationTitle = [
    "مشخصات",
    "قیمت",
    "ویژگی ها و امکانات",
    "توضیحات"
  ];
  List<Widget> avizInformation = [
    AvizInfo(),
    AvizPrice(),
    AvizProperty(),
    AvizDescription(),
  ];
}

class AvizInfo extends StatelessWidget {
  const AvizInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(7.5),
              border: Border.all(color: CustomColor.textColor, width: 1.5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'متراژ',
                    style:
                        TextStyle(color: CustomColor.textColor, fontSize: 16),
                  ),
                  Text(
                    '350'.toPersianDigit(),
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              _getVerticalDottedLine(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'اتاق',
                    style:
                        TextStyle(color: CustomColor.textColor, fontSize: 16),
                  ),
                  Text(
                    '6'.toPersianDigit(),
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              _getVerticalDottedLine(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'طبقه',
                    style:
                        TextStyle(color: CustomColor.textColor, fontSize: 16),
                  ),
                  Text(
                    '2'.toPersianDigit(),
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              _getVerticalDottedLine(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'سال ساخت',
                    style:
                        TextStyle(color: CustomColor.textColor, fontSize: 16),
                  ),
                  Text(
                    '1402'.toPersianDigit(),
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ],
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
                  children: [
                    Text(
                      'گرگان،صیاد شیرازی',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Image.asset("images/location_icon.png")
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AvizPrice extends StatelessWidget {
  const AvizPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(7.5),
          border: Border.all(color: CustomColor.textColor, width: 1.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '46460000'.seRagham().toPersianDigit(),
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'قیمت هر متر',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          _getHorizontalDottedLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '23230000000'.seRagham().toPersianDigit(),
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'قیمت کل',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AvizProperty extends StatelessWidget {
  const AvizProperty({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> facilities = [
      "آسانسور",
      "پارکینگ",
      "انباری",
      "بالکن",
      "پنت هاوس",
      "جنس کف سرامیک",
      "سرویس بهداشتی فرنگی و ایرانی"
    ];
    return Column(
      children: [
        TitleWidget(title: "ویژگی ها", icon: "property"),
        Container(
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(7.5),
              border: Border.all(color: CustomColor.textColor, width: 1.5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تک برگ'.seRagham().toPersianDigit(),
                    style:
                        TextStyle(fontSize: 16, color: CustomColor.textColor),
                  ),
                  Text(
                    'سند',
                    style:
                        TextStyle(fontSize: 16, color: CustomColor.textColor),
                  ),
                ],
              ),
              _getHorizontalDottedLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'جهت ساختمان'.seRagham().toPersianDigit(),
                    style:
                        TextStyle(fontSize: 16, color: CustomColor.textColor),
                  ),
                  Text(
                    'شمالی',
                    style:
                        TextStyle(fontSize: 16, color: CustomColor.textColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        TitleWidget(title: "امکانات آویز", icon: "facilities"),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(7.5),
            border: Border.all(
              color: CustomColor.textColor,
              width: 1.5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(facilities.length * 2 - 1, (index) {
              return (index) % 2 == 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        facilities[(index) ~/ 2],
                        style: TextStyle(
                          fontSize: 17,
                          color: CustomColor.textColor,
                        ),
                      ),
                    )
                  : _getHorizontalDottedLine();
            }),
          ),
        ),
      ],
    );
  }
}

class AvizDescription extends StatelessWidget {
  const AvizDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Text(
        ".ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم",
        textAlign: TextAlign.end,
        style: TextStyle(
          color: CustomColor.textColor,
          fontSize: 15,
        ),
      ),
    );
  }
}

Widget _getVerticalDottedLine() {
  return DottedLine(
    direction: Axis.vertical,
    dashColor: CustomColor.textColor,
    dashRadius: 0.0,
    dashGapLength: 4.0,
    dashGapColor: Colors.transparent,
    dashGapRadius: 0.0,
  );
}

Widget _getHorizontalDottedLine() {
  return DottedLine(
    direction: Axis.horizontal,
    dashColor: CustomColor.textColor,
    dashRadius: 0.0,
    dashGapLength: 4.0,
    dashGapColor: Colors.transparent,
    dashGapRadius: 0.0,
  );
}
