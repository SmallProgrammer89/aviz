import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/widgets/horizontal_card_item.dart';
import 'package:aviz_application/widgets/vertical_card_item.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSerching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: TextField(
                  onChanged: (value) {},
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    hintText: "جست و جو..",
                    hintStyle: TextStyle(fontFamily: "shabnam", fontSize: 16),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 2.5, bottom: 2.5, left: 10, right: 10),
                      child: Container(
                        width: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColor.customRed,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: const SizedBox(
                  height: 10,
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => HorizontalCardItem()))
            ],
          ),
        ),
      )),
    );
  }
}
