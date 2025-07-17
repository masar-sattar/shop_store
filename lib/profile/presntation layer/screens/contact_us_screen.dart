import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/profile/presntation%20layer/widgets/custom_profile_screen.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "contact_us".tr(),
          style: const TextStyle(fontSize: 20, color: AppColors.fontColor),
        ),
        // iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 300.0),
              child: Text(
                "contact_us".tr(),
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                "If you have any questions or issues, don’t hesitate to contact us. Our support team is ready to assist you at any time."
                    .tr()),
            const SizedBox(
              height: 14,
            ),
            CustomProfileScreen(
              lableName: "07722284111",
              colorContainer: AppColors.containColor,
              imagePath: 'assets/images/profile/yellow_phone.svg',
              fontColor: AppColors.fontColor,
              onTap: () {
                Navigator.pop(context);
              },
              showArrow: false,
            ),
            CustomProfileScreen(
              lableName: "بغداد, محطة القطار, شارع2054",
              colorContainer: AppColors.containColor,
              imagePath: 'assets/images/profile/yellow_location.svg',
              fontColor: AppColors.fontColor,
              onTap: () {
                Navigator.pop(context);
              },
              showArrow: false,
            ),
            CustomProfileScreen(
              lableName: "واتس اب",
              colorContainer: AppColors.containColor,
              fontColor: AppColors.fontColor,
              imagePath: 'assets/images/profile/yellow_whatsupp.svg',
              onTap: () {
                Navigator.pop(context);
              },
              showArrow: false,
            ),
          ],
        ),
      ),
    );
  }
}
