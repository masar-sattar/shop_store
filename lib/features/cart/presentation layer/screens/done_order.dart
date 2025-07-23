import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
// import 'package:shop_store/main.dart';
import 'package:shop_store/features/user/presntation/screens/home/home_screen.dart';
import 'package:shop_store/features/user/presntation/widgets/custom_widget.dart';

class DoneOrder extends StatelessWidget {
  const DoneOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/images/exit.svg",
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/images/done.svg",
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 65.0),
                        child: Text(
                          "Order received successfully. If you have any issues, please contact us."
                              .tr(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DoneOrder(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.mainColor,
                          minimumSize: const Size(double.infinity, 45),
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                        ),
                        child: Text(
                          "contact_us".tr(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "What is your rating of the store?".tr(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Spacer(
                          flex: 15,
                        ),
                        SizedBox(width: 4.0),
                        Icon(Icons.star, color: Colors.amber, size: 30.0),
                        Icon(Icons.star,
                            color: AppColors.lightboder, size: 30.0),
                        Icon(Icons.star,
                            color: AppColors.lightboder, size: 30.0),
                        Icon(Icons.star,
                            color: AppColors.lightboder, size: 30.0),
                        Icon(Icons.star,
                            color: AppColors.lightboder, size: 30.0),
                        Spacer(
                          flex: 15,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Align(
                      alignment:
                          Alignment.centerRight, // أو centerLeft حسب اللغة
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                            "Please tell us more about your experience.".tr(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomWidget(
                      hintText: "rating details".tr(),
                      maxLines: 6,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mainColor,
                        minimumSize: const Size(double.infinity, 45),
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                      ),
                      child: Text(
                        "rating_sharing".tr(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
