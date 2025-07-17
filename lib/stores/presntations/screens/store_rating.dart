// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

class StoreRating extends StatefulWidget {
  const StoreRating({super.key});

  @override
  State<StoreRating> createState() => _StoreRatingState();
}

class _StoreRatingState extends State<StoreRating> {
  int selectedIndex = 0;

  final List<String> categories = [
    'الكل ',
    'نجمة',
    'نجمتين',
    "3نجوم",
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
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset("assets/images/return.svg"),
        ),
        titleSpacing: -15.0,
        title: const Text(
          "sheglam",
          style: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
                const SizedBox(height: 8.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 4.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      SizedBox(width: 6.0),
                      Spacer(),
                      Text(
                        'تقييم 10',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 4.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star_outline, color: Colors.grey, size: 18.0),
                      SizedBox(width: 6.0),
                      Spacer(),
                      Text(
                        'تقييم 15',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 4.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star_outline, color: Colors.grey, size: 18.0),
                      Icon(Icons.star_outline, color: Colors.grey, size: 18.0),
                      SizedBox(width: 6.0),
                      Spacer(),
                      Text(
                        'تقييم 15',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 4.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star, color: Colors.amber, size: 18.0),
                      Icon(Icons.star_outline, color: Colors.grey, size: 18.0),
                      Icon(Icons.star_outline, color: Colors.grey, size: 18.0),
                      Icon(Icons.star_outline, color: Colors.grey, size: 18.0),
                      SizedBox(width: 6.0),
                      Spacer(),
                      Text(
                        'تقييم 15',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          SizedBox(
            height: 50,
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
          const SizedBox(height: 8.0),
          Container(
            decoration: BoxDecoration(
              color: AppColors.containColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(12.0),
            width: 360.0,
            height: 70.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              height: 40.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/images/persone.svg"),
                  const Column(
                    children: [
                      Text(
                        ' محمود حسن',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          ' متجر جيد والتوصيل سريع   ',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      // const Text(
                      //   'دقيقة 10',
                      //   style: TextStyle(
                      //     fontSize: 15.0,
                      //     fontStyle: FontStyle.italic,
                      //     color: Colors.black54,
                      //   ),
                      // ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.star, color: Colors.amber, size: 18.0),
                  const Icon(Icons.star, color: Colors.amber, size: 18.0),
                  const Icon(Icons.star, color: Colors.amber, size: 18.0),
                  const Icon(Icons.star, color: Colors.amber, size: 18.0),
                  const Icon(Icons.star, color: Colors.amber, size: 18.0),
                  const SizedBox(width: 6.0),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
