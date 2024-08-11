import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';
import '/common_widget/round_button.dart';
import '/common_widget/round_textfield.dart';
import '/screen/login/mobile_verify_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtZipCode = TextEditingController();

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
                  const SizedBox(height: 40),
                  Image.asset(
                    "assets/img/logo2.png",
                    width: context.width * 0.65,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                          "إنشاء حسابك",
                          style: TextStyle(
                            fontSize: 25,
                            color: TColor.secondaryText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 25),
                        NewRoundTextField(
                          hintText: "الإسم الأول",
                          controller: txtFirstName,
                        ),
                        const SizedBox(height: 15),
                        NewRoundTextField(
                          hintText: "الإسم الأخير",
                          controller: txtLastName,
                        ),
                        const SizedBox(height: 15),
                        NewRoundTextField(
                          controller: txtPassword,
                          hintText: "كلمة المرور",
                          obscureText: true,
                          left: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.key, color: TColor.primary),
                          ),
                        ),
                        const SizedBox(height: 15),
                        NewRoundTextField(
                          hintText: "رقم الهاتف",
                          keyboardType: TextInputType.phone,
                          controller: txtMobile,
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: RoundButton(
                            title: "انشاء حساب",
                            fontWeight: FontWeight.bold,
                            onPressed: () => context.push(const MobileVerifyScreen()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "أو قم بالتسجيل بواسطة حسابك على جوجل",
                            style: TextStyle(color: TColor.placeholder, fontSize: 15),
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
                  RoundButton(
                    title: "تسجيل الدخــول",
                    width: context.width * 0.65,
                    type: RoundButtonType.line,
                    onPressed: () => context.pop(),
                  ),
                  const SizedBox(height: 35),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
