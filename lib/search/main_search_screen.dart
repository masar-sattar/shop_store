import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/stores/presntations/screens/widgets/custom_store_container.dart';

class MainSearchScreen extends StatefulWidget {
  const MainSearchScreen({super.key});

  @override
  State<MainSearchScreen> createState() => _MainSearchScreenState();
}

class _MainSearchScreenState extends State<MainSearchScreen> {
  int? selectedPrice;
  int? selectedTime;
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 290,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.search, color: Colors.grey),
                  hintText: 'search'.tr(),
                  border: InputBorder.none,
                ),
                // textDirection: TextDirection.rtl,
              ),
            ),
            CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.containColor,
              child: IconButton(
                icon: SvgPicture.asset(
                  'assets/images/sort_filter.svg',
                  width: 18,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    isScrollControlled: true,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "رتب النتائج حسب السعر والمدة الزمنية",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "X",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "حسب السعر:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            RadioListTile(
                              title: const Text("السعر: من الأقل إلى الأعلى"),
                              value: 0,
                              groupValue: selectedPrice,
                              onChanged: (val) {
                                setState(() {
                                  selectedPrice = val;
                                });
                                Navigator.pop(
                                    context); // لإغلاق المودال بعد الاختيار
                              },
                            ),
                            RadioListTile(
                              title: const Text("السعر: من الأعلى إلى الأقل"),
                              value: 1,
                              groupValue: selectedPrice,
                              onChanged: (val) {
                                setState(() {
                                  selectedPrice = val;
                                });
                                Navigator.pop(context);
                              },
                            ),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "حسب المدة الزمنية:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            RadioListTile(
                              title: const Text("من الأقدم إلى الأحدث"),
                              value: 2,
                              groupValue: selectedTime,
                              onChanged: (val) {
                                setState(() {
                                  selectedTime = val;
                                });
                                Navigator.pop(context);
                              },
                            ),
                            RadioListTile(
                              title: const Text("من الأحدث إلى الأقدم"),
                              value: 3,
                              groupValue: selectedTime,
                              onChanged: (val) {
                                setState(() {
                                  selectedTime = val;
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Expanded(
        //         child: ElevatedButton(
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: AppColors.mainColor,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //           ),
        //           onPressed: () {},
        //           child: Text(
        //             "items".tr(),
        //           ),
        //         ),
        //       ),
        //       const SizedBox(width: 10),
        //       Expanded(
        //         child: ElevatedButton(
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: AppColors.sceondColor,
        //             foregroundColor: Colors.black,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //           ),
        //           onPressed: () {},
        //           child: Text('store'.tr()),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTabIndex = 0;
                    });
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: selectedTabIndex == 0
                          ? AppColors.mainColor // المختار = أصفر
                          : AppColors.sceondColor, // غير مختار = بيج فاتح
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "items".tr(),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: selectedTabIndex == 0
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTabIndex = 1;
                    });
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: selectedTabIndex == 1
                          ? AppColors.mainColor
                          : AppColors.sceondColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "store".tr(),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: selectedTabIndex == 1
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        selectedTabIndex == 0
            ? Column(
                children: [
                  CustomStoreContainer(),
                  CustomStoreContainer(),
                  CustomStoreContainer(),
                ],
              )
            : Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "no_matching_products_found".tr(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
      ]),
    );
  }
}
