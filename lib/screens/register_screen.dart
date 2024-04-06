import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/login_screen.dart';
import 'package:aviz_application/screens/register_otp_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              const SizedBox(
                width: double.infinity,
                height: 40,
              ),
              RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Image.asset('images/logo_image.png'),
                      ),
                      alignment: PlaceholderAlignment.middle),
                  TextSpan(
                    text: 'خوش اومدی به',
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
                '!این فوق العادست که آویزو برای آگهی هات انتخاب کردی',
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
                  hintText: 'نام و نام خانوادگی',
                  hintStyle: TextStyle(
                    color: Color(0xFFD0D5DD),
                    fontSize: 16,
                    fontFamily: 'shabnam',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
                    minimumSize: Size(double.infinity, 45),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.5))),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterOTPScreen(),
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
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                            child: Text(
                              ' ورود ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: CustomColor.customRed,
                                fontFamily: 'shabnam',
                              ),
                            ))),
                    TextSpan(
                      text: "قبلا ثبت نام کردی؟",
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
