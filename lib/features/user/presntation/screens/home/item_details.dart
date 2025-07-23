import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/user/presntation/widgets/product_scroller_card.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  Widget categoryItem({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }

  int selectedColorIndex = 0;

  List<Map<String, dynamic>> colorOptions = [
    {'name': 'أسود', 'color': Colors.black},
    {'name': 'أسود', 'color': Colors.black},
    {'name': 'أسود', 'color': Colors.black},
    {'name': 'أسود', 'color': Colors.black},
    {'name': 'أسود', 'color': Colors.black},
    {'name': 'فضي', 'color': const Color(0xFFD3BC82)},
  ];

  // int selectedIndex = 0;

  // final List<String> categories = [
  //   'اصفر ',
  //   ' اسود',
  //   'اصفر ',
  //   'اسود ',
  // ];
  final PageController _pageController = PageController();
  int currentIndex = 0;
  final List<String> images = [
    'assets/images/mascara.png',
    'assets/images/Frame 758531109.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_outline_rounded),
          )
        ],
        title: Title(
          color: Colors.white,
          child: Text("item_name".tr()),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/mascara.png")),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                  ),
                  const Column(
                    children: [
                      Text("sheglam"),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                          ),
                          Text("4.5"),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  const Text(
                    "20,000 د.ع",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 160),
                child: Text(
                  "انفنتى مسكارا تقبيت الحواجب",
                  style: TextStyle(fontSize: 18, color: AppColors.fontColor),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(236, 240, 239, 239),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "colors".tr(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: List.generate(colorOptions.length, (index) {
                        final color = colorOptions[index];
                        final isSelected = index == selectedColorIndex;

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColorIndex = index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.mainColor
                                    : Colors.white,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  color['name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color['color'],
                                    border: Border.all(color: Colors.black12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(236, 240, 239, 239),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "size".tr(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: List.generate(colorOptions.length, (index) {
                        final color = colorOptions[index];
                        final isSelected = index == selectedColorIndex;

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColorIndex = index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.mainColor
                                    : Colors.white,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  color['name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color['color'],
                                    border: Border.all(color: Colors.black12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 247, 240),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/images/car.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const Text(
                      "التوصيل مجاني",
                      style: TextStyle(
                        color: Color.fromARGB(255, 43, 146, 47),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
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
                      "similer_items".tr(),
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

              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //         padding: const EdgeInsets.symmetric(vertical: 16),
              //         backgroundColor: AppColors.mainColor,
              //         foregroundColor: Colors.white),
              //     child: Text(
              //       "add to card".tr(),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/pasket.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "add to card".tr(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
