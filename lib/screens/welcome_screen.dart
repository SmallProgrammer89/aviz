import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "images/background_pattern_image.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset('images/welcome_image.png'),
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "اینجا محل",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'shabnam'),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Image.asset(
                          'images/logo_image.png',
                        ),
                      ),
                      alignment: PlaceholderAlignment.middle,
                    ),
                    TextSpan(
                      text: 'آگهی شماست',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'shabnam'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF98A2B3),
                  fontSize: 15,
                  fontFamily: 'Shabnam',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotHeight: 9,
                  dotWidth: 8,
                  spacing: 3,
                  activeDotColor: CustomColor.customRed,
                  dotColor: Color.fromARGB(255, 226, 226, 226),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.customRed,
                  minimumSize: Size(170, 40),
                  elevation: 2,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ));
                },
                child: Text(
                  'ثبت نام',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: CustomColor.customRed, width: 1.2),
                  backgroundColor: Colors.white,
                  minimumSize: Size(170, 40),
                  elevation: 2,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  'ورود',
                  style: TextStyle(
                    color: CustomColor.customRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
