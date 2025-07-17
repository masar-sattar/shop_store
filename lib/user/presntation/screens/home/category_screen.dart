import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/user/presntation/widgets/product_scroller_card.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int selectedIndex = 0;

  final List<String> categories = [
    'جمال وعناية',
    'اكسسوارات',
    'الكترونيات',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: Text("category".tr())),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categories.length, (index) {
                    return categoryItem(
                      title: categories[index],
                      isSelected: index == selectedIndex,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "category name".tr(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "show all".tr(),
                    style: const TextStyle(
                      color: AppColors.mainColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.mainColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
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
                    "category name".tr(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "show all".tr(),
                    style: const TextStyle(
                      color: AppColors.mainColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.mainColor,
                      fontSize: 18,
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
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "category name".tr(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "show all".tr(),
                    style: const TextStyle(
                      color: AppColors.mainColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.mainColor,
                      fontSize: 18,
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
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                  ProductCard(
                    image: "assets/images/mascara.png",
                    name: "انفنتى مسكارا تقبيت الحواجب",
                    price: 2000,
                    oldPrice: 2500,
                    brandImage: "assets/images/mr.png",
                    brandName: "mr beauty",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryItem({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainColor : AppColors.sceondColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: isSelected
                ? Colors.black
                : const Color.fromARGB(255, 105, 105, 105),
          ),
        ),
      ),
    );
  }
}
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:shop_store/core/utilities/app_colors.dart';
// import 'package:shop_store/user/presntation/widgets/product_scroller_card.dart';

// class CategoryScreen extends StatefulWidget {
//   const CategoryScreen({super.key});

//   @override
//   State<CategoryScreen> createState() => _CategoryScreenState();
// }

// class _CategoryScreenState extends State<CategoryScreen> {
//   int selectedIndex = 0;

//   final List<String> categories = [
//     'جمال وعناية',
//     'اكسسوارات',
//     'الكترونيات',
//   ];

//   // المنتجات حسب الفئة
//   final List<List<ProductCard>> productsPerCategory = [
//     // جمال وعناية
//     [
//       ProductCard(
//         image: "assets/images/mascara.png",
//         name: "انفنتى مسكارا تثبيت الحواجب",
//         price: 2000,
//         oldPrice: 2500,
//         brandImage: "assets/images/mr.png",
//         brandName: "mr beauty",
//       ),
//       ProductCard(
//         image: "assets/images/mascara.png",
//         name: "كريم تفتيح البشرة",
//         price: 1500,
//         oldPrice: 1800,
//         brandImage: "assets/images/mr.png",
//         brandName: "mr beauty",
//       ),
//     ],

//     // اكسسوارات
//     [
//       ProductCard(
//         image: "assets/images/mascara.png",
//         name: "ساعة يد رجالية",
//         price: 10000,
//         oldPrice: 12000,
//         brandImage: "assets/images/mr.png",
//         brandName: "accessories plus",
//       ),
//       ProductCard(
//         image: "aassets/images/mascara.png",
//         name: "سوار جلدي أنيق",
//         price: 5000,
//         oldPrice: 6500,
//         brandImage: "assets/images/mascara.png",
//         brandName: "accessories plus",
//       ),
//     ],

//     // الكترونيات
//     [
//       ProductCard(
//         image: "aassets/images/mascara.png",
//         name: "هاتف ذكي A1",
//         price: 200000,
//         oldPrice: 220000,
//         brandImage: "assets/images/mr.png",
//         brandName: "Tech Store",
//       ),
//       ProductCard(
//         image: "assets/images/mascara.png",
//         name: "سماعة رأس لاسلكية",
//         price: 40000,
//         oldPrice: 45000,
//         brandImage: "assets/images/mr.png",
//         brandName: "Tech Store",
//       ),
//     ],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("category".tr()),
//       ),
//       body: Column(
//         children: [
//           // شريط الفئات
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: List.generate(categories.length, (index) {
//                   return categoryItem(
//                     title: categories[index],
//                     isSelected: index == selectedIndex,
//                     onTap: () {
//                       setState(() {
//                         selectedIndex = index;
//                       });
//                     },
//                   );
//                 }),
//               ),
//             ),
//           ),

//           // العنوان
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "discaounts".tr(),
//                   style: const TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "show all".tr(),
//                   style: const TextStyle(
//                     color: AppColors.mainColor,
//                     decoration: TextDecoration.underline,
//                     decorationColor: AppColors.mainColor,
//                     fontSize: 18,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 10),

//           // المنتجات الخاصة بالفئة
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: productsPerCategory[selectedIndex],
//             ),
//           ),

//           const SizedBox(height: 16),
//         ],
//       ),
//     );
//   }

//   Widget categoryItem({
//     required String title,
//     required bool isSelected,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//         margin: const EdgeInsets.symmetric(horizontal: 4),
//         decoration: BoxDecoration(
//           color: isSelected
//               ? AppColors.mainColor
//               : AppColors.primaryColor.withOpacity(0.2),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Text(
//           title,
//           style: TextStyle(
//             fontSize: 20,
//             color: isSelected
//                 ? Colors.white
//                 : const Color.fromARGB(255, 105, 105, 105),
//           ),
//         ),
//       ),
//     );
//   }
// }
