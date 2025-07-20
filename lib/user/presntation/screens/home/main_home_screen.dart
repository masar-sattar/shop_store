import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/user/presntation/screens/home/category_screen.dart';
import 'package:shop_store/user/presntation/screens/home/item_details.dart';
import 'package:shop_store/user/presntation/widgets/CategoryScroller.dart';
import 'package:shop_store/user/presntation/widgets/favorite_stores.dart';
import 'package:shop_store/user/presntation/widgets/product_scroller_card.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<String> images = [
    'assets/images/Frame 758531109.png',
    'assets/images/Frame 758531109.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                itemCount: images.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                final isActive = currentIndex == index;
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: isActive ? 12 : 8,
                    height: isActive ? 12 : 8,
                    decoration: BoxDecoration(
                      color: isActive ? Colors.black : Colors.grey.shade300,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: Text(
                "category".tr(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoryScreen()),
                );
              },
              child: const CategoryScroller(
                names: [
                  "جمال وعناية",
                  "جمال وعناية",
                  "جمال وعناية",
                  "جمال وعناية",
                  "جمال وعناية",
                  "جمال وعناية"
                ],
                images: [
                  "assets/images/category.png",
                  "assets/images/category.png",
                  "assets/images/category.png",
                  "assets/images/category.png",
                  "assets/images/category.png",
                  "assets/images/category.png"
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "discaounts".tr(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "show_all".tr(),
                    style: const TextStyle(
                      color: AppColors.mainColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.mainColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemDetails()),
                      );
                    },
                    child: const ProductCard(
                      image: "assets/images/mascara.png",
                      name: "انفنتى مسكارا تقبيت الحواجب",
                      price: 2000,
                      oldPrice: 2500,
                      brandImage: "assets/images/mr.png",
                      brandName: "mr beauty",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemDetails()),
                      );
                    },
                    child: const ProductCard(
                      image: "assets/images/mascara.png",
                      name: "انفنتى مسكارا تقبيت الحواجب",
                      price: 2000,
                      oldPrice: 2500,
                      brandImage: "assets/images/mr.png",
                      brandName: "mr beauty",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemDetails()),
                      );
                    },
                    child: const ProductCard(
                      image: "assets/images/mascara.png",
                      name: "انفنتى مسكارا تقبيت الحواجب",
                      price: 2000,
                      oldPrice: 2500,
                      brandImage: "assets/images/mr.png",
                      brandName: "mr beauty",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "favorit_stores".tr(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    "show_all".tr(),
                    style: const TextStyle(
                      color: AppColors.mainColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.mainColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const FavoriteStores(
              images: [
                "assets/images/hilal.png",
                "assets/images/hilal.png",
                "assets/images/hilal.png",
                "assets/images/hilal.png",
                "assets/images/hilal.png",
                "assets/images/hilal.png"
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top_Selling_Products".tr(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "show_all".tr(),
                    style: const TextStyle(
                      color: AppColors.mainColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.mainColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/middel.png",
                width: double.infinity,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/left image.png",
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    "assets/images/right image.png",
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: Transform.translate(
      //   offset: const Offset(0, -10),
      //   child: Container(
      //     padding: const EdgeInsets.all(6),
      //     decoration: const BoxDecoration(
      //       color: Colors.transparent,
      //       shape: BoxShape.circle,
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black26,
      //           blurRadius: 8,
      //           offset: Offset(0, 10),
      //         ),
      //       ],
      //     ),
      //     child: RawMaterialButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const CartMainScreen(),
      //           ),
      //         );
      //       },
      //       fillColor: Colors.black,
      //       constraints: const BoxConstraints.tightFor(width: 55, height: 70),
      //       shape: const StadiumBorder(),
      //       elevation: 0,
      //       child: SvgPicture.asset(
      //           "assets/images/navigator_images/pasketinfloatingbutton.svg",
      //           width: 28,
      //           height: 28,
      //           color: AppColors.mainColor),
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: NavigatorButtonScreen(),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   actions: [
      //     IconButton(
      //       icon: SvgPicture.asset(
      //         'assets/images/notfication.svg',
      //         width: 40,
      //         height: 40,
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const NotificationScreen(),
      //           ),
      //         );
      //       },
      //     ),
      //   ],
      //   leading: Image.asset(
      //     "assets/images/logo_yellow.png",
      //     width: 25,
      //     height: 25,
      //   ),
      // ),
      // body: 