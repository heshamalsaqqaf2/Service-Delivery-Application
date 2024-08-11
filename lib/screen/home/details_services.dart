import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service_request/common/extension.dart';

import '../../common/color_extension.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: TColor.primary,
    ));
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 80.0, right: 10.0, left: 10.0),
              child: Container(
                height: context.width * 0.6,
                decoration: BoxDecoration(
                  color: TColor.primaryShadw,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/img/banner1.png')),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
