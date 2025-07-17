import 'package:flutter/material.dart';

class FavoriteStores extends StatelessWidget {
  final List<String> images;

  const FavoriteStores({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(images.length, (index) {
          return Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.grey.shade300),
            ),
          );
        }),
      ),
    );
  }
}
