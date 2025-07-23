// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shop_store/cart/presentation%20layer/screens/cart_confirmation_order.dart';
// import 'package:shop_store/core/utilities/app_colors.dart';
// import 'package:shop_store/profile/presntation%20layer/widgets/custom_profile_screen.dart';
// import 'package:shop_store/profile/presntation%20layer/widgets/row_item_view.dart';
// import 'package:shop_store/user/presntation/screens/home/notification_screen.dart';
// import 'package:shop_store/user/presntation/widgets/navigator_button_screen.dart';

// class CartMainScreen extends StatefulWidget {
//   const CartMainScreen({super.key});

//   @override
//   State<CartMainScreen> createState() => _CartMainScreenState();
// }

// class _CartMainScreenState extends State<CartMainScreen> {
//   int quantity = 0;

//   Widget currentPage = const CartMainScreen();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         floatingActionButton: Transform.translate(
//           offset: const Offset(0, -10),
//           child: Container(
//             padding: const EdgeInsets.all(6),
//             decoration: const BoxDecoration(
//               color: Colors.transparent,
//               shape: BoxShape.circle,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 8,
//                   offset: Offset(0, 10),
//                 ),
//               ],
//             ),
//             child: RawMaterialButton(
//               onPressed: () {},
//               fillColor: AppColors.mainColor,
//               constraints: const BoxConstraints.tightFor(width: 55, height: 70),
//               shape: const StadiumBorder(),
//               elevation: 0,
//               child: SvgPicture.asset(
//                 "assets/images/navigator_images/pasketinfloatingbutton.svg",
//                 width: 28,
//                 height: 28,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//         bottomNavigationBar: NavigatorButtonScreen(
//           setPage: (_) {},
//         ),
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           actions: [
//             IconButton(
//               icon: SvgPicture.asset(
//                 'assets/images/notfication.svg',
//                 width: 40,
//                 height: 40,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const NotificationScreen(),
//                   ),
//                 );
//               },
//             ),
//           ],
//           leading: Image.asset(
//             "assets/images/logo_yellow.png",
//             width: 25,
//             height: 25,
//           ),
//         ),
//         body: Column(children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: AppColors.containColor,
//                 borderRadius: BorderRadius.circular(12.0),
//               ),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Text("cart_info".tr()),
//                     ),
//                   ),
//                   CustomProfileScreen(
//                     showArrow: false,
//                     lableName: "اجمالى الطلب 32,000 د.ع",
//                     imagePath: "assets/images/profile/currency.svg",
//                     onTap: () {},
//                     colorContainer: Colors.white,
//                     height: 50,
//                   ),
//                   CustomProfileScreen(
//                     lableName: 'النوصيل مجاناً',
//                     fontColor: const Color.fromARGB(255, 26, 133, 29),
//                     showArrow: false,
//                     imagePath: "assets/images/car.svg",
//                     onTap: () {},
//                     colorContainer: Colors.white,
//                     height: 50,
//                   ),
//                   CustomProfileScreen(
//                     lableName: '2 منتج',
//                     showArrow: false,
//                     imagePath: "assets/images/item.svg",
//                     onTap: () {},
//                     colorContainer: Colors.white,
//                     height: 50,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const CartConfirmationOrder(),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: AppColors.mainColor,
//                         minimumSize: const Size(double.infinity, 50),
//                         padding: const EdgeInsets.symmetric(horizontal: 6),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         // mainAxisSize:
//                         //     MainAxisSize.min, // حتى ما ياخذ مساحة أكثر من اللازم

//                         children: [
//                           Text(
//                             "complete_order".tr(),
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                             ),
//                           ),
//                           const SizedBox(width: 6),
//                           SvgPicture.asset(
//                             "assets/images/back.svg",
//                             width: 20,
//                             height: 20,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       "items".tr(),
//                       style: const TextStyle(
//                         color: AppColors.labelColor,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Expanded(child: RowItemView()),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: AppColors.containColor,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             IconButton(
//                               icon:
//                                   SvgPicture.asset("assets/images/remove.svg"),
//                               onPressed: () {
//                                 setState(() {
//                                   if (quantity > 1) {
//                                     quantity--;
//                                   } else {
//                                     quantity = 0;
//                                   }
//                                 });
//                               },
//                             ),
//                             Text(
//                               quantity.toString(),
//                               style: const TextStyle(fontSize: 16),
//                             ),
//                             IconButton(
//                               icon: SvgPicture.asset(
//                                 "assets/images/add.svg",
//                               ),
//                               onPressed: () {
//                                 setState(() {
//                                   quantity++;
//                                 });
//                               },
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ]));
//   }
// }
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/features/cart/presentation%20layer/screens/cart_confirmation_order.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/custom_profile.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/row_item_view.dart';
import 'package:shop_store/features/user/presntation/screens/home/notification_screen.dart';
import 'package:shop_store/features/user/presntation/screens/home/home_screen.dart';
import 'package:shop_store/features/user/presntation/widgets/navigator_button_screen.dart';

class CartMainScreen extends StatefulWidget {
  const CartMainScreen({super.key});

  @override
  State<CartMainScreen> createState() => _CartMainScreenState();
}

class _CartMainScreenState extends State<CartMainScreen> {
  int quantity = 1;
  final int pricePerItem = 16000;

  int get total => quantity * pricePerItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, -10),
        child: RawMaterialButton(
          onPressed: () {},
          fillColor: AppColors.mainColor,
          constraints: const BoxConstraints.tightFor(width: 55, height: 70),
          shape: const StadiumBorder(),
          elevation: 0,
          child: SvgPicture.asset(
            "assets/images/navigator_images/pasketinfloatingbutton.svg",
            width: 28,
            height: 28,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: NavigatorButtonScreen(
        currentIndex: 4,
        onTabChanged: (index) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(initialIndex: index),
            ),
            (route) => false,
          );
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/notfication.svg',
              width: 40,
              height: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
          ),
        ],
        leading: Image.asset(
          "assets/images/logo_yellow.png",
          width: 25,
          height: 25,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // معلومات الطلب
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
                      lableName: "اجمالي الطلب ${total.toString()} د.ع",
                      imagePath: "assets/images/profile/currency.svg",
                      onTap: () {},
                      colorContainer: Colors.white,
                      height: 50,
                    ),
                    CustomProfileScreen(
                      lableName: 'التوصيل مجاناً',
                      fontColor: const Color.fromARGB(255, 26, 133, 29),
                      showArrow: false,
                      imagePath: "assets/images/car.svg",
                      onTap: () {},
                      colorContainer: Colors.white,
                      height: 50,
                    ),
                    CustomProfileScreen(
                      lableName: '$quantity منتج',
                      showArrow: false,
                      imagePath: "assets/images/item.svg",
                      onTap: () {},
                      colorContainer: Colors.white,
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CartConfirmationOrder(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.mainColor,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "complete_order".tr(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(width: 6),
                            SvgPicture.asset(
                              "assets/images/back.svg",
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // عناصر السلة
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "items".tr(),
                      style: const TextStyle(
                        color: AppColors.labelColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(child: RowItemView()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.containColor,
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                    "assets/images/remove.svg"),
                                onPressed: () {
                                  setState(() {
                                    if (quantity > 1) quantity--;
                                  });
                                },
                              ),
                              Text(
                                quantity.toString(),
                                style: const TextStyle(fontSize: 16),
                              ),
                              IconButton(
                                icon: SvgPicture.asset("assets/images/add.svg"),
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
