import 'package:flutter/material.dart';
import 'package:service_request/screen/home/home_screen.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';
import '/common_widget/round_button.dart';
import '/screen/profile/rate_of_service_screen.dart';
import 'selcted_location.dart';

class ChooseServiceScreen extends StatefulWidget {
  const ChooseServiceScreen({super.key});

  @override
  State<ChooseServiceScreen> createState() => _ChooseServiceScreenState();
}

class _ChooseServiceScreenState extends State<ChooseServiceScreen> {
  bool isHome = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/img/menu-88.png",
            height: 28,
            color: TColor.secondary,
          ),
        ),
        title: Image.asset(
          "assets/img/logo2.png",
          height: 45,
          fit: BoxFit.fitHeight,
        ),
        actions: [
          InkWell(
            onTap: () => context.push(const RateOfServiceScreen()),
            child: Container(
              width: 45,
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: TColor.primary,
                foregroundColor: TColor.primary,
                backgroundImage: const AssetImage("assets/img/avatar.jpg"),
              ),
            ),
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "مرحبا بك 🖐️",
                    style: TextStyle(
                      fontSize: 30,
                      color: TColor.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "في ",
                        style: TextStyle(
                          fontSize: 30,
                          color: TColor.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "تطبيق خدمــة",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = false;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      !isHome
                                          ? "assets/img/select_radio.png"
                                          : "assets/img/unselect_radio.png",
                                      width: 25,
                                      height: 25,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 25),
                                  child: Image.asset(
                                    "assets/img/1.png",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Text(
                                  "الأعمال",
                                  style: TextStyle(
                                    color: TColor.primary,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "التجاريــة",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isHome = true;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      isHome
                                          ? "assets/img/select_radio.png"
                                          : "assets/img/unselect_radio.png",
                                      width: 25,
                                      height: 25,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 25),
                                  child: Image.asset(
                                    "assets/img/2.png",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Text(
                                  "المنزل",
                                  style: TextStyle(
                                    color: TColor.primary,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "شخصيــة",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: TColor.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: TColor.secondary,
                          fontSize: 17,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            width: 40,
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/img/search.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "إبحث عن خدمتك ...",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: TColor.placeholder,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "موقعك الحالــــي:",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF03FBFF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Text(
                                "أنت الان متواجد في - ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 8),
                              InkWell(
                                onTap: () {},
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "محافظة إب - شارع الملكة أروئ.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundButton(
                              title: "عرض الخدمات",
                              width: 100,
                              type: RoundButtonType.line,
                              onPressed: () => context.push(const HomeScreen()),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: RoundButton(
                              title: "إبحث الأن",
                              onPressed: () {
                                context.push(const SelectedLocation());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
