import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "notification".tr(),
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "read all".tr(),
              style: TextStyle(color: AppColors.mainColor, fontSize: 15),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                )
              ],
            ),
            height: 80,
            // width: 390,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo_yellow.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("  تم تأكيد طلبك! "),
                      SizedBox(height: 8),
                      Text(
                        "تم تأكيد طلبك رقم #1043 وجارٍ تجهيزه للشحن.",
                        style: TextStyle(color: AppColors.fontColor),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [Text("أمس 8:22 م")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
