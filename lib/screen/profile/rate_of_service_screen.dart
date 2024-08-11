import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';

class RateOfServiceScreen extends StatefulWidget {
  const RateOfServiceScreen({super.key});

  @override
  State<RateOfServiceScreen> createState() => _RateOfServiceScreenState();
}

class _RateOfServiceScreenState extends State<RateOfServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: TColor.primary,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/img/menu-88.png",
            color: TColor.background,
            height: 28,
          ),
        ),
        title: Text(
          "الملف الشخصي",
          style: TextStyle(
            fontSize: 20,
            color: TColor.background,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_forward_rounded, color: TColor.background),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: context.width * 0.5,
                    decoration: BoxDecoration(
                      color: TColor.primary,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.14),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      width: double.maxFinite,
                      height: context.width * 0.55,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.17),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      width: double.maxFinite,
                      height: context.width * 0.55,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.2),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 2,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: context.width * 0.22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: TColor.primary, size: 25),
                              const SizedBox(width: 8),
                              Text(
                                "4.2",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: TColor.secondaryText,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Hesham, Zohir",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Divider(color: Colors.black12, height: 1),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      "عدد الخدمات",
                                      style: TextStyle(
                                        color: TColor.secondaryText,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 60,
                                color: Colors.black12,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "مبرمج",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: TColor.primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      "المهنة / الخدمة",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: TColor.secondaryText,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.08),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius:
                              BorderRadius.circular(context.width * 0.3),
                          border: Border.all(color: Colors.white, width: 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(0, 2))
                          ]),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(context.width * 0.3),
                        child: Image.asset(
                          "assets/img/avatar.jpg",
                          width: context.width * 0.3,
                          height: context.width * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "المعلومات الشخصية",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 60, top: 15, bottom: 15),
                      child: Row(
                        children: [
                          Text(
                            "العمر : 30 سنة",
                            style: TextStyle(
                              fontSize: 15,
                              color: TColor.secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.black12, height: 1),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 60, top: 15, bottom: 15),
                      child: Row(
                        children: [
                          Text(
                            "رقم الهاتف : 777 777 777",
                            style: TextStyle(
                              fontSize: 15,
                              color: TColor.secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.black12, height: 1),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 60, top: 15, bottom: 15),
                      child: Row(
                        children: [
                          Text(
                            "موقعك الحالي : محافظة إب - الظهار",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "التقيمات",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: TColor.primary,
                              foregroundColor: TColor.primary,
                              backgroundImage:
                                  const AssetImage("assets/img/avatar.jpg"),
                            ),
                          ),
                          const SizedBox(width: 4, height: 4),
                          Text(
                            "عبد الرحمن أحمد",
                            style: TextStyle(
                              fontSize: 15,
                              color: TColor.primaryText,
                            ),
                          ),
                          const SizedBox(width: 10),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            unratedColor: Colors.black12,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0.5),
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: TColor.primary),
                            onRatingUpdate: (rating) => print(rating),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "الخدمة ممتازة ومقدم الخدمة راقي في التعامل أنصح بتعامل معه",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: TColor.primary,
                              foregroundColor: TColor.primary,
                              backgroundImage:
                                  const AssetImage("assets/img/avatar.jpg"),
                            ),
                          ),
                          const SizedBox(width: 4, height: 4),
                          Text(
                            "عبد الرحمن أحمد",
                            style: TextStyle(
                              fontSize: 15,
                              color: TColor.primaryText,
                            ),
                          ),
                          const SizedBox(width: 10),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            unratedColor: Colors.black12,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0.5),
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: TColor.primary),
                            onRatingUpdate: (rating) => print(rating),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "الخدمة ممتازة ومقدم الخدمة راقي في التعامل أنصح بتعامل معه",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: TColor.primary,
                              foregroundColor: TColor.primary,
                              backgroundImage:
                                  const AssetImage("assets/img/avatar.jpg"),
                            ),
                          ),
                          const SizedBox(width: 4, height: 4),
                          Text(
                            "عبد الرحمن أحمد",
                            style: TextStyle(
                              fontSize: 15,
                              color: TColor.primaryText,
                            ),
                          ),
                          const SizedBox(width: 10),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            unratedColor: Colors.black12,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0.5),
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: TColor.primary),
                            onRatingUpdate: (rating) => print(rating),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "الخدمة ممتازة ومقدم الخدمة راقي في التعامل أنصح بتعامل معه",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                        ),
                      ),
                    ),
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
