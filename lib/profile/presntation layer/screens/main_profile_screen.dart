import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/auth/login_screen.dart';

import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/profile/presntation%20layer/screens/archive_order_screen.dart';
import 'package:shop_store/profile/presntation%20layer/screens/contact_us_screen.dart';
import 'package:shop_store/profile/presntation%20layer/screens/details_profile.dart';
import 'package:shop_store/profile/presntation%20layer/screens/fav_details_screen.dart';
import 'package:shop_store/profile/presntation%20layer/widgets/custom_profile_screen.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        CustomProfileScreen(
          colorContainer: AppColors.sceondColor,
          lableName: "محمد جاسم",
          phonNum: "7722284111",
          imagePath: "assets/images/persone.svg",
          iconColor: AppColors.mainColor,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailsProfile()));
          },
        ),
        CustomProfileScreen(
            lableName: "favourite".tr(),
            fontColor: AppColors.fontColor,
            imagePath: "assets/images/profile/favourite.svg",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavDetailsScreen()));
            },
            colorContainer: AppColors.containColor),
        CustomProfileScreen(
            lableName: "order_archive".tr(),
            fontColor: AppColors.fontColor,
            imagePath: "assets/images/profile/order_archive.svg",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArchiveOrderScreen()));
            },
            colorContainer: AppColors.containColor),
        CustomProfileScreen(
            lableName: "contact_us".tr(),
            fontColor: AppColors.fontColor,
            imagePath: "assets/images/profile/support.svg",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContactUsScreen()));
            },
            colorContainer: AppColors.containColor),
        CustomProfileScreen(
          lableName: "log_out".tr(),
          fontColor: Colors.red,
          imagePath: "assets/images/profile/logout.svg",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          colorContainer: const Color(0x08FF0000),
        )
      ]),
    );
  }
}
