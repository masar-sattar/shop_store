import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomProfileScreen extends StatelessWidget {
  final String? phonNum;
  final String lableName;
  final String imagePath;
  final VoidCallback onTap;
  final Color colorContainer;
  final Color? iconColor;
  final Color? fontColor;
  final bool showArrow;
  final String? price;
  final String? itemsCount;
  final String? duration;
  final double? height;

  const CustomProfileScreen(
      {super.key,
      required this.lableName,
      required this.imagePath,
      required this.onTap,
      required this.colorContainer,
      this.phonNum,
      this.iconColor,
      this.fontColor,
      this.showArrow = true,
      this.duration,
      this.itemsCount,
      this.price,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ??
            (phonNum != null ||
                    price != null ||
                    itemsCount != null ||
                    duration != null
                ? 90
                : 75),
        // width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: colorContainer,
        ),
        child: Row(
          children: [
            const SizedBox(width: 12),
            SvgPicture.asset(
              imagePath,
              width: 40,
              height: 40,
              color: iconColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 9.0, horizontal: 11.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lableName,
                      style: TextStyle(
                        fontSize: 18,
                        color: fontColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          if (phonNum != null) ...[
                            Text(
                              phonNum!,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.grey),
                            ),
                          ],
                          if (phonNum != null &&
                              (price != null ||
                                  itemsCount != null ||
                                  duration != null))
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text('|',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                          if (price != null) ...[
                            Text(
                              price!,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                          if (price != null &&
                              (itemsCount != null || duration != null))
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text('|',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                          if (itemsCount != null) ...[
                            Text(
                              itemsCount!,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                          if (itemsCount != null && duration != null)
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text('|',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                          if (duration != null) ...[
                            Text(
                              duration!,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (showArrow)
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: IconButton(
                  onPressed: onTap,
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
