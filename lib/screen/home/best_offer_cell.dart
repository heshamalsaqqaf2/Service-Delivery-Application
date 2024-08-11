import 'package:flutter/material.dart';
import '/common/color_extension.dart';
import '/common/extension.dart';

class BestOfferCell extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;

  const BestOfferCell({super.key, required this.obj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: context.width * 0.7,
        height: context.width * 0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  obj["img"] as String? ?? "",
                  width: context.width * 0.7,
                  height: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              obj["title"] as String? ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: TColor.primaryText,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              obj["subtitle"] as String? ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: TColor.secondaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
