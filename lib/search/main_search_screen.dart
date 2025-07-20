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
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  bool _isFocused = false;

  int? selectedPrice;
  int? selectedTime;
  int selectedTabIndex = 0;
  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });

    _controller.addListener(() {
      // إعادة بناء الواجهة عند تغير النص
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _clearSearch() {
    _controller.clear(); // مسح النص
    _focusNode.unfocus(); // إلغاء التركيز
    setState(() {
      _isFocused = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   width: 330,
            //   height: 50,
            //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            //   decoration: BoxDecoration(
            //     color: AppColors.sceondColor,
            //     borderRadius: BorderRadius.circular(25),
            //   ),
            //   child: TextField(
            //     cursorColor: AppColors.mainColor,
            //     decoration: InputDecoration(
            //       icon: const Icon(Icons.search, color: Colors.grey),
            //       hintText: 'search'.tr(),
            //       border: InputBorder.none,
            //     ),
            //     // textDirection: TextDirection.rtl,
            //   ),
            // ),
            Container(
              width: 290,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color:
                    _isFocused ? AppColors.sceondColor : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: _isFocused
                      ? AppColors.mainColor
                      : const Color.fromARGB(255, 206, 202, 202),
                  width: 2,
                ),
              ),
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                cursorColor: AppColors.mainColor,
                decoration: InputDecoration(
                  icon: const Icon(Icons.search, color: Colors.grey),
                  hintText: 'search'.tr(),
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  suffixIcon: _controller.text.isNotEmpty
                      ? GestureDetector(
                          onTap: _clearSearch,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: SvgPicture.asset(
                              'assets/images/exit.svg',
                              color: Colors.black,
                            ),
                          ),
                        )
                      : null,
                ),
              ),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.containColor,
              child: IconButton(
                icon: SvgPicture.asset(
                  'assets/images/sort_filter.svg',
                  width: 20,
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
                                  behavior: HitTestBehavior.translucent,
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
                      "store".tr(),
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
                      "items".tr(),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: selectedTabIndex == 1
                            ? FontWeight.normal
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
            ? const Column(
                children: [
                  CustomStoreContainer(),
                  CustomStoreContainer(),
                  CustomStoreContainer(),
                ],
              )
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "no_matching_products_found".tr(),
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
      ]),
    );
  }
}
