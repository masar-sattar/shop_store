import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/custom_profile.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/row_item_view.dart';

class WaitingOrderDetails extends StatelessWidget {
  const WaitingOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Container(
              height: 20,
              width: 40,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.mainColor,
                shape: BoxShape.rectangle,
              ),
              child: Center(
                child: Text(
                  "waiting".tr(),
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          ],
          title: const Text(
            "#9879586",
            style: TextStyle(fontSize: 18, color: AppColors.fontColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.containColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("order_info".tr()),
                        ),
                      ),
                      CustomProfileScreen(
                        showArrow: false,
                        lableName: "20,000 د.ع",
                        imagePath: "assets/images/profile/currency.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 50,
                      ),
                      CustomProfileScreen(
                        lableName: 'تاريخ الطلب منذ 3 شهور',
                        showArrow: false,
                        imagePath: "assets/images/profile/joined_date.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 50,
                      ),
                      CustomProfileScreen(
                        lableName: 'النوصيل مجاناً',
                        fontColor: const Color.fromARGB(255, 26, 133, 29),
                        showArrow: false,
                        imagePath: "assets/images/car.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.containColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("deliverd".tr()),
                        ),
                      ),
                      CustomProfileScreen(
                        showArrow: false,
                        lableName: "masar sattar",
                        imagePath: "assets/images/persone.svg",
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 50,
                      ),
                      CustomProfileScreen(
                        lableName: "07722284111 ",
                        imagePath: "assets/images/profile/phone.svg",
                        showArrow: false,
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 50,
                      ),
                      CustomProfileScreen(
                        lableName: "بغداد, محطة القطار, شارع2054 ",
                        imagePath: "assets/images/location.svg",
                        showArrow: false,
                        onTap: () {},
                        colorContainer: Colors.white,
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 320),
                child: Text(
                  "items".tr(),
                  style:
                      const TextStyle(fontSize: 18, color: AppColors.fontColor),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const RowItemView(),
            ],
          ),
        ));
  }
}
