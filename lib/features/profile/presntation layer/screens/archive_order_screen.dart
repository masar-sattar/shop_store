import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/profile/presntation%20layer/screens/delivired_order_details.dart';
// import 'package:shop_store/profile/presntation%20layer/screens/fav_details_screen.dart';
import 'package:shop_store/features/profile/presntation%20layer/screens/waiting_order_details.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/custom_profile.dart';

class ArchiveOrderScreen extends StatefulWidget {
  const ArchiveOrderScreen({super.key});

  @override
  State<ArchiveOrderScreen> createState() => _ArchiveOrderScreenState();
}

class _ArchiveOrderScreenState extends State<ArchiveOrderScreen> {
  int selectedIndex = 0;
  final List<String> statuses = [
    'waiting'.tr(),
    'inProgress'.tr(),
    'deliverd'.tr(),
    "rejected".tr(),
  ];
  Widget statusItems({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainColor : AppColors.sceondColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
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
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'order_archive'.tr(),
          style: const TextStyle(fontSize: 18, color: AppColors.fontColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: List.generate(statuses.length, (index) {
                      return statusItems(
                        title: statuses[index],
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
            ),
            const SizedBox(
              height: 10,
            ),
            CustomProfileScreen(
              lableName: "#465465",
              imagePath: "assets/images/profile/order_archive.svg",
              price: "20,000 د.ع",
              itemsCount: "3 منتج",
              duration: "منذ يوم",
              colorContainer: AppColors.containColor,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WaitingOrderDetails()));
              },
            ),
            CustomProfileScreen(
              lableName: "#465465",
              imagePath: "assets/images/profile/order_archive.svg",
              price: "20,000 د.ع",
              itemsCount: "3 منتج",
              duration: "منذ يوم",
              colorContainer: AppColors.containColor,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeliviredOrderDetails()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
