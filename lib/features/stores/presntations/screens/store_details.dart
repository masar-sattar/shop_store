import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/stores/presntations/screens/store_rating.dart';
import 'package:shop_store/features/user/presntation/widgets/product_scroller_card.dart';

class StoreDetails extends StatefulWidget {
  const StoreDetails({super.key});

  @override
  State<StoreDetails> createState() => _StoreDetailsState();
}

class _StoreDetailsState extends State<StoreDetails> {
  int selectedIndex = 0;

  final List<String> categories = [
    'جمال وعناية',
    'اكسسوارات',
    'الكترونيات',
  ];

  final List<Map<String, dynamic>> products = [
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
    },
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
    },
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
    },
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
    },
  ];

  Widget categoryItem({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        margin: const EdgeInsets.symmetric(horizontal: 3.0),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.mainColor
              : AppColors.primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            color: isSelected
                ? Colors.black
                : const Color.fromARGB(255, 105, 105, 105),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/return.svg"),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: -15.0,
        title: Row(
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage("assets/images/mascara.png"),
                ),
                border: Border.all(color: Colors.grey.shade300),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "sheglam",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14.0,
                      color: AppColors.mainColor,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      "4.5",
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.containColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: const EdgeInsets.all(12.0),
              width: 360.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("store_info".tr()),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/images/location.svg",
                                  height: 20.0, width: 20.0),
                              const SizedBox(width: 6.0),
                              const Expanded(
                                child: Text(
                                  'بغداد، محطة القطار، شارع 2054',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/star.svg",
                            height: 20.0, width: 20.0),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.star, color: Colors.amber, size: 18.0),
                        const Icon(Icons.star, color: Colors.amber, size: 18.0),
                        const Icon(Icons.star, color: Colors.amber, size: 18.0),
                        const Icon(Icons.star, color: Colors.amber, size: 18.0),
                        const Icon(Icons.star_half,
                            color: Colors.amber, size: 18.0),
                        const SizedBox(width: 6.0),
                        const Text(
                          '(15 تقييم)',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const StoreRating()),
                            );
                          },
                          child: SvgPicture.asset("assets/images/back.svg",
                              height: 20.0, width: 20.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 50.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return categoryItem(
                    title: categories[index],
                    isSelected: index == selectedIndex,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 9.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      image: product['image'],
                      name: product['name'],
                      price: product['price'],
                      oldPrice: product['oldPrice'],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
