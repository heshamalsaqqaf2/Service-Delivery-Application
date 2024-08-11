import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:service_request/screen/login/mobile_verify_screen.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';
import 'package:flutter/services.dart';
import '/common_widget/round_button.dart';
import '/common_widget/round_textfield.dart';

class VerifyMessageScreen extends StatefulWidget {
  const VerifyMessageScreen({super.key});

  @override
  State<VerifyMessageScreen> createState() => _VerifyMessageScreenState();
}

class _VerifyMessageScreenState extends State<VerifyMessageScreen> {
  TextEditingController txtPhoneNumber = TextEditingController();

  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  TextEditingController txtMobile = TextEditingController();
  late CountryCode countryCode;

  @override
  void initState() {
    super.initState();
    countryCode = countryCodePicker.countryCodes
        .firstWhere((element) => element.name == "Yemen");
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
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
                    const SizedBox(height: 40),
                    Center(
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 15),
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
                              "إرسال رمز التحقق",
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 25),
                            InkWell(
                              onTap: () async {
                                final code = await countryCodePicker.showPicker(
                                    context: context);
                                if (code != null) {
                                  countryCode = code;
                                  setState(() {});
                                }
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                width: double.maxFinite,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 2)
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: countryCode.flagImage(
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${countryCode.name.toUpperCase()} ( ${countryCode.dialCode} )",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: TColor.placeholder,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            RoundTextField(
                              hintText: "أدخل رقم الهاتف",
                              keyboardType: TextInputType.phone,
                              controller: txtPhoneNumber,
                            ),
                            const SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: RoundButton(
                                title: "إرسال رمز التحقق",
                                onPressed: () =>
                                    context.push(const MobileVerifyScreen()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
