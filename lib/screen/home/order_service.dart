import 'package:flutter/material.dart';
import '../../common/color_extension.dart';
import '../../model/service.dart';
import 'details_services.dart';
// import '../../animation/FadeAnimation.dart';

class OrderServices extends StatefulWidget {
  const OrderServices({super.key});

  @override
  State<OrderServices> createState() => OrderServicesState();
}

class OrderServicesState extends State<OrderServices> {
  List<Service> services = [
    Service('تنظيف', "assets/img/1.png"),
    Service('صيانة', 'assets/img/2.png'),
    Service('كهربائيات', 'assets/img/2.png'),
    Service('طابعات', 'assets/img/1.png'),
    Service('معدات ثقيلة', 'assets/img/1.png'),
    Service('حدائق', 'assets/img/2.png'),
    Service('سباكة', 'assets/img/2.png'),
    Service('مقاولة', 'assets/img/1.png'),
    Service('سائق', 'assets/img/1.png'),
    Service('مطبخ', 'assets/img/2.png'),
  ];

  int selectedService = -1;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: selectedService >= 0
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ServiceDetails()),
                  );
                },
                backgroundColor: TColor.primary,
                child: const Icon(Icons.arrow_forward_ios, size: 20))
            : null,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 80.0, right: 20.0, left: 20.0),
                  child: Text(
                    'ماهيا \nالخدمة التي تحتاجها?',
                    style: TextStyle(
                      fontSize: 40,
                      color: TColor.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: services.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      // (1.0 + index) / 4,
                      child: serviceContainer(services[index].imageURL,
                          services[index].name, index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  serviceContainer(String image, String name, int index) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              if (selectedService == index) {
                selectedService = -1;
              } else {
                selectedService = index;
              }
            },
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: selectedService == index
                ? TColor.primaryShadw
                : Colors.grey.shade100,
            border: Border.all(
              color: selectedService == index
                  ? TColor.primary
                  : TColor.primary.withOpacity(0),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(image, height: 80),
              const SizedBox(height: 20),
              Text(name,
                  style: TextStyle(fontSize: 20, color: TColor.secondary))
            ],
          ),
        ),
      ),
    );
  }
}
