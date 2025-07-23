import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

class RowItemView extends StatelessWidget {
  const RowItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/mascara.png",
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "20,000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 120,
                child: Text(
                  "انفنتى مسكارا تقبيت الحواجب",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Text(
                "2 قطعة",
                style: TextStyle(color: AppColors.labelColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
