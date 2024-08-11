import 'package:flutter/material.dart';
import 'package:service_request/screen/home/order_service.dart';
import '../profile/rate_of_service_screen.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';
import '/common_widget/link_button.dart';
import '/common_widget/select_icon_title_button.dart';
import '/screen/home/best_offer_cell.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bannerArr = [
    "assets/img/banner1.png",
    "assets/img/banner2.png",
    "assets/img/banner3.png",
    "assets/img/banner4.png",
  ];

  List bestOfferArr = [
    {
      "img": "assets/img/best_1.png",
      "title": "خدمات صحية",
      "subtitle": "العديد من مقدمين الخدمات التنظيف."
    },
    {
      "img": "assets/img/best_2.png",
      "title": "خدمات المكاتب",
      "subtitle": "العديد من مقدمين الخدمات الصحية."
    },
  ];

  PageController controller = PageController();
  int selectPage = 0;
  int selectCatIndex = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() => selectPage = controller.page?.round() ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: TColor.primary,
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 0, bottom: 0, top: 0),
              child: IconButton(
                onPressed: () => context.push(const RateOfServiceScreen()),
                icon: Image.asset(
                  "assets/img/menu-88.png",
                  height: 28,
                ),
              ),
            ),
          ],
          title: Row(
            children: [
              Image.asset(
                "assets/img/logo-light.png",
                height: 30,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    // margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 17,
                        color: TColor.primaryText,
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
                        hintText: "إبحث عن خدمتك...",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: TColor.placeholder,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 15, height: 30),
                      LinkButton(title: "النظافة", onPressed: () {}),
                      const SizedBox(width: 8),
                      LinkButton(title: "البناء", onPressed: () {}),
                      const SizedBox(width: 8),
                      LinkButton(title: "الصيانة", onPressed: () {}),
                      const SizedBox(width: 8),
                      LinkButton(title: "السباكة", onPressed: () {}),
                      const SizedBox(width: 8),
                      LinkButton(title: "السائقين", onPressed: () {}),
                      const SizedBox(width: 8),
                      LinkButton(title: "التعليم", onPressed: () {}),
                      const SizedBox(width: 8),
                      LinkButton(title: "الرعاية", onPressed: () {}),
                      const SizedBox(width: 8),
                      LinkButton(title: "الرياضة", onPressed: () {}),
                      const SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 15, height: 30),
                      const Icon(Icons.location_on_outlined,
                          size: 25, color: Color(0xFF03FBFF)),
                      const SizedBox(width: 8),
                      Text(
                        "موقعك هو - ",
                        style: TextStyle(fontSize: 14, color: TColor.gray),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "محافظة إب - شارع الملكة أروئ.",
                              style: TextStyle(
                                fontSize: 14,
                                color: TColor.gray,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: SizedBox(
                        height: 85,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SelectIconTitleButton(
                              title: "صحة",
                              icon: "assets/img/hygiene.png",
                              isSelect: selectCatIndex == 0,
                              onPressed: () {
                                setState(() => selectCatIndex = 0);
                              },
                            ),
                            SelectIconTitleButton(
                              title: "الكهرباء",
                              icon: "assets/img/electric_plug.png",
                              isSelect: selectCatIndex == 1,
                              onPressed: () {
                                setState(() => selectCatIndex = 1);
                              },
                            ),
                            SelectIconTitleButton(
                              title: "الأجهزة",
                              icon: "assets/img/appllication.png",
                              isSelect: selectCatIndex == 2,
                              onPressed: () {
                                setState(() => selectCatIndex = 2);
                              },
                            ),
                            SelectIconTitleButton(
                              title: "السباكة",
                              icon: "assets/img/plumbing.png",
                              isSelect: selectCatIndex == 3,
                              onPressed: () {
                                setState(() => selectCatIndex = 3);
                              },
                            ),
                            SelectIconTitleButton(
                              title: "الأجهزة المنزلية",
                              icon: "assets/img/ac_repair.png",
                              isSelect: selectCatIndex == 4,
                              onPressed: () {
                                setState(() => selectCatIndex = 4);
                              },
                            ),
                            SelectIconTitleButton(
                              title: "عرض الكل",
                              icon: "assets/img/more.png",
                              isSelect: selectCatIndex == 5,
                              onPressed: () {
                                setState(() => selectCatIndex = 5);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SizedBox(
                          height: context.width * 0.57,
                          child: PageView.builder(
                            controller: controller,
                            itemCount: bannerArr.length,
                            itemBuilder: (context, index) {
                              var image = bannerArr[index];
                              return SizedBox(
                                width: context.width,
                                height: context.width * 0.57,
                                child: Image.asset(
                                  image,
                                  fit: BoxFit.cover,
                                  width: context.width,
                                  height: context.width * 0.57,
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: bannerArr.map(
                              (image) {
                                var index = bannerArr.indexOf(image);
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    width: selectPage == index ? 20 : 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: selectPage == index
                                            ? TColor.primary
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "أفضل العروض",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: TColor.primaryText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "مقدمين خدمات متميزين بأعمالهم ومواعيدهم.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: TColor.secondaryText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: context.width * 0.6,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                itemBuilder: (context, index) {
                                  var obj = bestOfferArr[index];
                                  return BestOfferCell(
                                    obj: obj,
                                    onPressed: () {
                                      context.push(const OrderServices());
                                      debugPrint(obj.toString());
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 15),
                                itemCount: bestOfferArr.length),
                          ),
                        ],
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
