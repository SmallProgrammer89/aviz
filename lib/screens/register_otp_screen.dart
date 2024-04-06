import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class RegisterOTPScreen extends StatefulWidget {
  const RegisterOTPScreen({super.key});

  @override
  State<RegisterOTPScreen> createState() => _RegisterOTPScreenState();
}

class _RegisterOTPScreenState extends State<RegisterOTPScreen> {
  CountdownController _controller = CountdownController(autoStart: true);
  int countDownSecond = 120;
  bool isTimerFinish = false;
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
                'کد ثبت نام پیامک شده را وارد کنید',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      if (isTimerFinish) {
                        setState(() {
                          _controller.restart();
                        });
                      }
                    },
                    child: Text(
                      "ارسال مجدد کد",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'shabnam',
                      ),
                    ),
                  ),
                  Countdown(
                    seconds: 120,
                    build: (BuildContext context, double time) {
                      return Text(
                        "${(time / 60).floor()}:${time % 60 < 10 ? 0 : ""}${(time % 60).toInt()}"
                            .toPersianDigit(),
                        style: TextStyle(fontSize: 20),
                      );
                    },
                    controller: _controller,
                    interval: Duration(seconds: 1),
                    onFinished: () {
                      setState(() {
                        isTimerFinish = true;
                      });
                    },
                  )
                ],
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
                  'تایید ثبت نام',
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
