import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/user/presntation/widgets/product_scroller_card.dart';

class FavDetailsScreen extends StatefulWidget {
  const FavDetailsScreen({super.key});

  @override
  State<FavDetailsScreen> createState() => _FavDetailsScreenState();
}

class _FavDetailsScreenState extends State<FavDetailsScreen> {
  final List<Map<String, dynamic>> products = [
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
      "brandImage": "assets/images/mr.png",
      "brandName": "mr beauty",
    },
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
      "brandImage": "assets/images/mr.png",
      "brandName": "mr beauty",
    },
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
      "brandImage": "assets/images/mr.png",
      "brandName": "mr beauty",
    },
    {
      "image": "assets/images/mascara.png",
      "name": "انفنتى مسكارا تثبيت الحواجب",
      "price": 2000.0,
      "oldPrice": 2500.0,
      "brandImage": "assets/images/mr.png",
      "brandName": "mr beauty",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'favourite'.tr(),
          style: const TextStyle(fontSize: 18, color: AppColors.fontColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
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
              brandImage: product['brandImage'],
              brandName: product['brandName'],
            );
          },
        ),
      ),
    );
  }
}
