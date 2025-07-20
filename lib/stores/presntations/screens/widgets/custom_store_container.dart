import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/stores/presntations/screens/store_details.dart';

class CustomStoreContainer extends StatelessWidget {
  const CustomStoreContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StoreDetails()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.containColor,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                height: 80,
                // width: 390,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/mr.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "مسواك ايفنتس",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: AppColors.mainColor, size: 16),
                              SizedBox(width: 4),
                              Text("4.5"),
                              SizedBox(width: 6),
                              Text("|"),
                              SizedBox(width: 6),
                              Text("22 منتج"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/images/back.svg",
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
