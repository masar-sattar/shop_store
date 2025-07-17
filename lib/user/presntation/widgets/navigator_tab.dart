import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

class NavigatorTab extends StatelessWidget {
  final Widget? widget;

  final String title;
  final String iconPath;
  final bool isSelected;
  final VoidCallback onTap;
  const NavigatorTab(
      {super.key,
      required this.title,
      required this.iconPath,
      required this.isSelected,
      required this.onTap,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return widget ??
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: onTap,
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: isSelected
                  ? BoxDecoration(
                      border: !isSelected
                          ? null
                          : const Border(
                              top: BorderSide(
                                color: AppColors
                                    .mainColor, // or any color you want
                                width: 2.0, // border thickness
                              ),
                            ),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 243, 236, 215),
                          Colors.white,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  : null,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 6),
                  SvgPicture.asset(
                    iconPath,
                    width: 20,
                    height: 20,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
