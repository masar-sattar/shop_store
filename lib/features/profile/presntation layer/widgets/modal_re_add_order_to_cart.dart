import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/features/cart/presentation%20layer/screens/cart_main_screen.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';

class ReAddOrderToCart extends StatelessWidget {
  const ReAddOrderToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 230,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/images/re_add-cart.svg",
              width: 40, height: 40),
          const SizedBox(height: 16),
          Text(
            "added_success".tr(),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            "you_can_see_cart".tr(),
            style: const TextStyle(fontSize: 15, color: AppColors.fontColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartMainScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainColor,
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 25),
            ),
            child: Text("go_to_cart".tr(),
                style: const TextStyle(fontSize: 15, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
