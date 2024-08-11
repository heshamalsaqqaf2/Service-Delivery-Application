import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service_request/screen/login/verify_message_screen.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';
import '/common_widget/round_button.dart';
import '/common_widget/round_textfield.dart';
import '/screen/home/choose_service_screen.dart';
import '/screen/login/sign_in_mobile_screen.dart';
import '/screen/login/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtPhoneNumber = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
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
                    margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
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
                          "تسجيل الدخول",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 25),
                        RoundTextField(
                          hintText: "رقم الهاتف",
                          keyboardType: TextInputType.phone,
                          controller: txtPhoneNumber,
                        ),
                        const SizedBox(height: 25),
                        RoundTextField(
                          hintText: "كلمة المرور",
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
                              title: "تسجيل الدخول", onPressed: () => context.push(const ChooseServiceScreen())),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () => context.push(const VerifyMessageScreen()),
                              child: Text(
                                "نسيت كلمة السر",
                                style: TextStyle(
                                    color: TColor.primary, fontSize: 16, decoration: TextDecoration.underline),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context.push(const SignInMobileScreen());
                              },
                              child: Text(
                                "الدخول من الهاتف",
                                style: TextStyle(
                                    color: TColor.primary, fontSize: 16, decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "أو قم بالتسجيل بواسطة حسابك على جوجل",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/img/google48.png", width: 70),
                                  Text(
                                    "Google Account",
                                    style: TextStyle(color: TColor.title),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "هل ليس لديك حساب؟",
                    style: TextStyle(color: TColor.primaryText, fontSize: 15),
                  ),
                  const SizedBox(height: 15),
                  RoundButton(
                    title: "إنشاء حسابك الأن",
                    width: context.width * 0.65,
                    type: RoundButtonType.line,
                    onPressed: () => context.push(const SignUpScreen()),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
