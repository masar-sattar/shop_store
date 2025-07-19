import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final String image;
  final double price;
  final double? oldPrice;
  final String brandImage;
  final String brandName;

  const ProductCard({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    this.oldPrice,
    required this.brandImage,
    required this.brandName,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int quantity = 0;
  bool isFavorite = false;
  int _calculateDiscountPercent(double oldPrice, double newPrice) {
    final discount = ((oldPrice - newPrice) / oldPrice) * 100;
    return discount.round(); // 20%
  }

  @override
  Widget build(BuildContext context) {
    //اكو  gesture detector  مسحتها
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      padding: const EdgeInsets.all(6),
      width: 160,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  widget.image,
                  height: 166,
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
              if (widget.oldPrice != null)
                Positioned(
                  top: 4,
                  left: 2,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '${_calculateDiscountPercent(widget.oldPrice!, widget.price)}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(widget.brandImage, height: 24),
              const SizedBox(width: 4),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 30),
                child: Text(
                  widget.brandName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(width: 4),
              if (widget.oldPrice != null)
                Row(
                  children: [
                    Text(
                      '${widget.price.toStringAsFixed(0)} د.ع',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '${widget.oldPrice?.toStringAsFixed(0)} ',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              if (widget.oldPrice == null)
                Text(
                  '${widget.price.toStringAsFixed(0)} د.ع',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13),
          ),
          quantity == 0
              ? SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              quantity = 1;
                            });
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
                      ),
                      const SizedBox(width: 4),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            shape: BoxShape.rectangle,
                            color: isFavorite
                                ? const Color(0x08FF0000)
                                : Colors.transparent,
                          ),
                          child: SvgPicture.asset(
                            isFavorite
                                ? 'assets/images/red_heart.svg'
                                : 'assets/images/profile/favourite.svg',
                            width: 25,
                            height: 25,
                            color: isFavorite ? Colors.red : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.containColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset("assets/images/remove.svg"),
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) {
                                quantity--;
                              } else {
                                quantity = 0;
                              }
                            });
                          },
                        ),
                        Text(
                          quantity.toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          icon: SvgPicture.asset(
                            "assets/images/add.svg",
                          ),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
