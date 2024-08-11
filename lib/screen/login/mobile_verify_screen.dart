import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:service_request/screen/login/login_otp_screen.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';

class MobileVerifyScreen extends StatefulWidget {
  const MobileVerifyScreen({super.key});

  @override
  State<MobileVerifyScreen> createState() => _MobileVerfiyScreenState();
}

class _MobileVerfiyScreenState extends State<MobileVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: context.width,
            height: context.height,
            child: SingleChildScrollView(
              child: SizedBox(
                width: context.width,
                height: context.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    Image.asset(
                      "assets/img/logo2.png",
                      width: context.width * 0.7,
                    ),
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        text: "PLEASE VERIFY\nYOUR",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: TColor.primary,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: " CELL NUMBER",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: TColor.primaryText,
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Text.rich(
                        style: const TextStyle(wordSpacing: 1.5),
                        textAlign: TextAlign.center,
                        TextSpan(
                          text:
                              "Please Enter The 4 Digit Number Verification\nCode Sent To Your Cell For Number\n",
                          children: [
                            TextSpan(
                              text: "777 777 777 ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: TColor.primary,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: " Via SMS Message \n OR ",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                color: TColor.secondaryText,
                              ),
                            ),
                            TextSpan(
                              text: "CHANGE",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: TColor.secondary,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: " Your Number.",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: TColor.secondaryText,
                                fontSize: 17,
                              ),
                            ),
                          ],
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    OtpTextField(
                      numberOfFields: 4,
                      borderColor: Colors.white,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      fieldWidth: 60,
                      fieldHeight: 60,
                      filled: true,
                      borderRadius: BorderRadius.circular(10),
                      fillColor: Colors.white,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {}, // end onSubmit
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend Verification Code",
                        style: TextStyle(
                          fontSize: 17,
                          color: TColor.secondaryText,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => context.push(const LoginOTPScreen()),
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: TColor.primary,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(Icons.arrow_back_rounded,
                            color: Colors.white, size: 35),
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
