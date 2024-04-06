import 'package:aviz_application/constants/custom_color.dart';
import 'package:flutter/material.dart';

class HorizontalCardItem extends StatelessWidget {
  const HorizontalCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 7.5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: [
          BoxShadow(
              offset: Offset(0, 15),
              color: CustomColor.defaultShadowColor,
              blurRadius: 15,
              spreadRadius: -20)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: ShapeDecoration(
              image: DecorationImage(
                  image: AssetImage('images/product_image_2.png')),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  child: Text(
                    'واحد دوبلکس فول امکانات',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF101828),
                      fontSize: 16,
                      fontFamily: 'Shabnam',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  child: Text(
                    'سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF98A2B3),
                      fontSize: 14,
                      fontFamily: 'Shabnam',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '۸٬۲۰۰٬۰۰۰٬۰۰۰',
                      style: TextStyle(
                        color: Color(0xFFE60023),
                        fontSize: 15,
                        fontFamily: 'Shabnam',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      ':قیمت',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF101828),
                        fontSize: 15,
                        fontFamily: 'Shabnam',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
