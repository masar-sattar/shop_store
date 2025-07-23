import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/custom_profile.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/modal_re_add_order_to_cart.dart';

import 'package:shop_store/features/profile/presntation%20layer/widgets/row_item_view.dart';

class DeliviredOrderDetails extends StatefulWidget {
  const DeliviredOrderDetails({super.key});

  @override
  State<DeliviredOrderDetails> createState() => _DeliviredOrderDetailsState();
}

class _DeliviredOrderDetailsState extends State<DeliviredOrderDetails> {
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
              color: const Color.fromARGB(255, 42, 168, 46),
              shape: BoxShape.rectangle,
            ),
            child: Center(
              child: Text(
                "deliverd".tr(),
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
        child: SingleChildScrollView(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                    "assets/images/star.svg",
                                    height: 32.0,
                                    width: 32.0),
                              ),
                              const Spacer(
                                flex: 15,
                              ),
                              const SizedBox(width: 4.0),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 18.0),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 18.0),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 18.0),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 18.0),
                              const Icon(Icons.star_half,
                                  color: Colors.amber, size: 18.0),
                              const Spacer(
                                flex: 15,
                              ),
                              Text(
                                "rating".tr(),
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black54,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ElevatedButton(
          // onPressed: () {
          //   showDialog(
          //     context: context,
          //     builder: (_) => AlertDialog(),
          //   );
          // },
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: AppColors.mainColor,
          //   padding: const EdgeInsets.symmetric(horizontal: 6),
          // ),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   // mainAxisSize:
          //   //     MainAxisSize.min, // حتى ما ياخذ مساحة أكثر من اللازم

          //   children: [
          //     SvgPicture.asset(
          //       "assets/images/profile/reorder.svg",
          //       width: 20,
          //       height: 20,
          //     ),
          //     const SizedBox(width: 8),
          //     Text(
          //       "return_add_this_order".tr(),
          //       style: const TextStyle(
          //         color: Colors.white,
          //         fontSize: 15,
          //       ),
          //     )
          //   ],
          // ),
          onPressed: () {
            showAddToCartModal(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            padding: const EdgeInsets.symmetric(horizontal: 6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/profile/reorder.svg",
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(
                "return_add_this_order".tr(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showAddToCartModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    builder: (context) {
      return const ReAddOrderToCart();
    },
  );
}
