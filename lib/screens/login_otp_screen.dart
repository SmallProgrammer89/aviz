import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class LoginOTPScreen extends StatefulWidget {
  const LoginOTPScreen({super.key});

  @override
  State<LoginOTPScreen> createState() => _LoginOTPScreenState();
}

class _LoginOTPScreenState extends State<LoginOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: double.infinity),
              Text(
                'تایید شماره موبایل',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontSize: 17,
                  fontFamily: 'shabnam',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'کد ورود پیامک شده را وارد کنید',
                style: TextStyle(
                  color: Color(0xff98A2B3),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 50),
              OtpTextField(
                cursorColor: CustomColor.customRed,
                focusedBorderColor: CustomColor.customRed,
                disabledBorderColor: Colors.transparent,
                enabledBorderColor: Colors.transparent,
                numberOfFields: 4,
                fillColor: CustomColor.customGrey,
                filled: true,
                showFieldAsBox: true,
                fieldWidth: 75,
                onCodeChanged: (String code) {},
              ),
              const SizedBox(height: 40),
              RichText(
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: " 00:45 ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "ارسال مجدد کد",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'shabnam',
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
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
                        builder: (context) => MainScreen(),
                      ));
                },
                child: Text(
                  'تایید ورود',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
