import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    this.labelField,
    this.controller,
    this.colorFont,
    this.hintText,
    this.maxLines = 1,
    this.validator,
    this.title,
    this.svgPath,
    this.onIconTap,
    this.hintIconPath,
    this.keyboardType,
    this.inputFormatters,
  });

  final String? labelField;
  final TextEditingController? controller;
  final Color? colorFont;
  final String? hintText;
  final int maxLines;
  final String? Function(String?)? validator;
  final String? title;
  final String? svgPath;
  final VoidCallback? onIconTap;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintIconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              title!,
              style: TextStyle(
                color: colorFont ?? Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          minLines: maxLines,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          validator: validator,
          decoration: InputDecoration(
            labelText: labelField,
            hintText: null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintStyle: TextStyle(color: AppColors.hintextColor),
            suffixIcon: svgPath != null
                ? GestureDetector(
                    onTap: onIconTap,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        svgPath!,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  )
                : null,
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (hintIconPath != null) ...[
                  SvgPicture.asset(
                    hintIconPath!,
                    width: 20,
                    height: 20,
                    color: AppColors.hintextColor,
                  ),
                  const SizedBox(width: 6),
                ],
                Flexible(
                  child: Text(
                    hintText ?? '',
                    style: TextStyle(
                      color: AppColors.hintextColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
