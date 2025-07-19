import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop_store/core/utilities/app_colors.dart';

class PaymentSelector extends StatefulWidget {
  final Function(int)? onChanged;
  const PaymentSelector({super.key, this.onChanged});

  @override
  State<PaymentSelector> createState() => _PaymentSelectorState();
}

class _PaymentSelectorState extends State<PaymentSelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildPaymentOption(
          index: 0,
          label: 'online'.tr(),
          isSelected: selectedIndex == 0,
        ),
        const SizedBox(width: 8),
        buildPaymentOption(
          index: 1,
          label: "cash_recived".tr(),
          isSelected: selectedIndex == 1,
        ),
      ],
    );
  }

  Widget buildPaymentOption({
    required int index,
    required String label,
    required bool isSelected,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(index);
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.sceondColor : AppColors.containColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? AppColors.mainColor : Colors.grey[400]!,
              width: 1.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                isSelected
                    ? 'assets/images/Rectangle_yellow.svg'
                    : 'assets/images/Rectangle 11.svg',
                height: 18,
                width: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                label,
                style: const TextStyle(color: Colors.black87, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
