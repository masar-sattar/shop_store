import 'package:flutter/material.dart';

class CategoryScroller extends StatelessWidget {
  final List<String> names;
  final List<String> images;

  const CategoryScroller({
    super.key,
    required this.names,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(names.length, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  names[index],
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
