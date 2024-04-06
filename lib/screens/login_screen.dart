import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/login_otp_screen.dart';
import 'package:aviz_application/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Image.asset('images/logo_image.png'),
                    ),
                  ),
                  TextSpan(
                    text: 'ورود به',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'shabnam',
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ]),
              ),
              const SizedBox(height: 50),
              Text(
                '!خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF98A2B3),
                  fontSize: 15,
                  fontFamily: 'shabnam',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: CustomColor.customRed,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  filled: true,
                  fillColor: CustomColor.customGrey,
                  hintText: 'شماره مبایل',
                  hintStyle: TextStyle(
                    color: Color(0xFFD0D5DD),
                    fontSize: 16,
                    fontFamily: 'shabnam',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.customRed,
                    minimumSize: Size(double.infinity, 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.5))),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginOTPScreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/grey_arrow_left_icon.png'),
                    const SizedBox(width: 5),
                    Text(
                      'مرحله بعد',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22.5,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterScreen(),
                                  ));
                            },
                            child: Text(
                              ' ثبت نام ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: CustomColor.customRed,
                                fontFamily: 'shabnam',
                              ),
                            ))),
                    TextSpan(
                      text: " تا حالا ثبت نام نکردی؟",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xffD0D5DD),
                          fontFamily: 'shabnam'),
                    ),
                    WidgetSpan(
                        child: SizedBox(
                      width: double.infinity,
                      height: 30,
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
