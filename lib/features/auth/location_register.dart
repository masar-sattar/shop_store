import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
// import 'package:shop_store/main.dart';

class LocationRegister extends StatelessWidget {
  const LocationRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 90),
                child: Center(
                    child: SvgPicture.asset(
                        "assets/images/Navigation_location.svg")),
              ),
              Center(
                child: Text(
                  "Select_Delivery_Address".tr(),
                  style: const TextStyle(
                      fontSize: 24, color: AppColors.labelColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "choose_the_location_accurately_to_make_it_easier_to_reach_you._this_address_will_be_used_for_future_deliveries."
                      .tr(),
                  style:
                      const TextStyle(color: AppColors.fontColor, fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => LocationRegister(),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    minimumSize: const Size(double.infinity, 45),
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                  child: Text(
                    "move_to_map".tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
