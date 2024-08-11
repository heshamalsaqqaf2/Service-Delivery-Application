import 'package:flutter/material.dart';
import 'package:service_request/screen/login/sign_in_screen.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';

class LoginOTPScreen extends StatefulWidget {
  const LoginOTPScreen({super.key});

  @override
  State<LoginOTPScreen> createState() => _LoginOTPScreenState();
}

class _LoginOTPScreenState extends State<LoginOTPScreen> {
  TextEditingController txtPhoneNumber = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  Center(
                    child: Image.asset(
                      "assets/img/logo2.png",
                      width: context.width * 0.65,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 15),
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "إعادة كلمة المرور",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const SizedBox(height: 25),
                        RoundTextField(
                          hintText: "أدخل كلمة المرور الجديدة",
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          controller: txtPassword,
                          left: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.key, color: TColor.primary),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: RoundButton(
                              title: "الذهاب لتسجيل الدخول",
                              onPressed: () =>
                                  context.push(const SignInScreen())),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 50),
                    child: Center(
                      widthFactor: double.infinity,
                      child: Text.rich(
                        textAlign: TextAlign.right,
                        TextSpan(
                          text: "👌 إنتبة يا عزيزي \n",
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            color: TColor.primary,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "\n تأكد من تذكرك لكلمة المرور الجديدة التي أدخلتها الأن لانه سوف تقوم الان بإدخالها لتسجيل دخولك الى التطبيق يا عزيزي وكن حذرا من نسيانها!",
                              style: TextStyle(
                                fontFamily: 'Almarai',
                                color: TColor.primaryText,
                                fontSize: 16,
                                wordSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
