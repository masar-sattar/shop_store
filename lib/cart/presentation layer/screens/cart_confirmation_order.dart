import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shop_store/cart/presentation%20layer/screens/done_order.dart';
import 'package:shop_store/cart/widget/payment_selector.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/profile/presntation%20layer/widgets/custom_profile_screen.dart';
import 'package:shop_store/user/presntation/screens/auth/location_register.dart';
import 'package:shop_store/user/presntation/widgets/custom_widget.dart';

class CartConfirmationOrder extends StatefulWidget {
  const CartConfirmationOrder({super.key});

  @override
  State<CartConfirmationOrder> createState() => _CartConfirmationOrderState();
}

class _CartConfirmationOrderState extends State<CartConfirmationOrder> {
  int selectedPayment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "اكمال الطلب #87985679458",
          style: TextStyle(color: AppColors.fontColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.containColor,
                  // color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                child: Text("cart_info".tr()),
                              ),
                            ),
                            CustomProfileScreen(
                              showArrow: false,
                              lableName: "اجمالى الطلب 32,000 د.ع",
                              imagePath: "assets/images/profile/currency.svg",
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
                            CustomProfileScreen(
                              lableName: '2 منتج',
                              showArrow: false,
                              imagePath: "assets/images/item.svg",
                              onTap: () {},
                              colorContainer: Colors.white,
                              height: 50,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: Colors.white,
                              child: CustomWidget(
                                hintText: "add note here...".tr(),
                                maxLines: 5,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "recived_info".tr(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'name'.tr(),
                    style: const TextStyle(
                        fontSize: 18, color: AppColors.fontColor),
                  ),
                  CustomWidget(
                    hintText: "enter_name".tr(),
                  ),
                  Text(
                    'phone_number'.tr(),
                    style: const TextStyle(
                        fontSize: 18, color: AppColors.fontColor),
                  ),
                  const SizedBox(height: 10),
                  CustomWidget(hintText: 'enter_phone'.tr()),
                  const SizedBox(height: 20),
                  Text(
                    'address'.tr(),
                    style: const TextStyle(
                        fontSize: 18, color: AppColors.fontColor),
                  ),
                  CustomWidget(
                    hintText: "enter_address".tr(),
                    svgPath: "assets/images/location_icon.svg",
                    onIconTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationRegister()),
                      );
                    },
                  ),
                  Text(
                    "If no location is selected, your default location saved at login will be used."
                        .tr(),
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "pay".tr(),
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  PaymentSelector(
                    onChanged: (index) {
                      setState(() {
                        selectedPayment = index;
                      });
                    },
                  ),
                  if (selectedPayment == 0) ...[
                    Text(
                      'card_no'.tr(),
                      style: const TextStyle(
                          fontSize: 18, color: AppColors.fontColor),
                    ),
                    CustomWidget(
                      hintText: "xxxx xxxx xxxx xxxx",
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "CVC",
                                  style: const TextStyle(
                                      fontSize: 18, color: AppColors.fontColor),
                                ),
                              ),
                              SizedBox(
                                  width: 160,
                                  child: CustomWidget(
                                    hintText: "xxx",
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(3),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'expire_date'.tr(),
                                  style: const TextStyle(
                                      fontSize: 18, color: AppColors.fontColor),
                                ),
                              ),
                              SizedBox(
                                  width: 166,
                                  child: CustomWidget(hintText: "MM/YY")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
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
            padding: const EdgeInsets.symmetric(horizontal: 6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize:
            //     MainAxisSize.min, // حتى ما ياخذ مساحة أكثر من اللازم

            children: [
              const SizedBox(width: 6),
              Text(
                "confirmation_order".tr(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
