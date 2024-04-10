import 'package:aviz_application/screens/aviz_detail_screen.dart';
import 'package:aviz_application/widgets/horizontal_card_item.dart';
import 'package:aviz_application/widgets/vertical_card_item.dart';
import 'package:flutter/material.dart';

class HomeAvizScreen extends StatefulWidget {
  const HomeAvizScreen({super.key});

  @override
  State<HomeAvizScreen> createState() => _HomeAvizScreenState();
}

class _HomeAvizScreenState extends State<HomeAvizScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Image.asset("images/logo_with_not_background.png"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مشاهده همه',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD0D5DD)),
                  ),
                  Text(
                    'آویز های داغ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 290,
              child: ListView.builder(
                reverse: true,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: VerticalCardItem(),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AvizDetailScreen(),
                        )),
                  );
                },
                itemCount: 10,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مشاهده همه',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD0D5DD)),
                  ),
                  Text(
                    'آویز های اخیر',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: HorizontalCardItem(),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AvizDetailScreen(),
                      )),
                ),
              ),
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
