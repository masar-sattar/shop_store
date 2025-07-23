import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/custom_profile.dart';

class AnotherContactUs extends StatelessWidget {
  const AnotherContactUs({super.key});

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("cotact_escrption".tr()),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.containColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("current_location".tr()),
                        ),
                      ),
                      CustomProfileScreen(
                        showArrow: false,
                        lableName: "بغداد, محطة القطار, شارع2054",
                        imagePath: "assets/images/profile/yellow_location.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 60,
                      ),
                      Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.sceondColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/plus_yellow.svg"),
                              Text(
                                "add_another_address".tr(),
                                style: const TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.containColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("social_media".tr()),
                        ),
                      ),
                      CustomProfileScreen(
                        showArrow: false,
                        lableName: "facebook.com/yourPage",
                        imagePath: "assets/images/Facebook.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 65,
                      ),
                      CustomProfileScreen(
                        showArrow: false,
                        lableName: "instagram.com/yourProfile54",
                        imagePath: "assets/images/instagram.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 65,
                      ),
                      CustomProfileScreen(
                        showArrow: false,
                        lableName: "t.me/yourTelegram",
                        imagePath: "assets/images/telegram.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 65,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
