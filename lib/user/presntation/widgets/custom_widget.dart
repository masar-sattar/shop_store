import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:flutter/services.dart';

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
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         if (title != null)
//           Padding(
//             padding: const EdgeInsets.only(bottom: 6),
//             child: Text(
//               title!,
//               style: TextStyle(
//                 color: colorFont ?? Colors.black,
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         TextFormField(
//           // validator: validator ??
//           //     (value) {
//           //       if (value?.trim().isEmpty ?? true) {
//           //         return 'This field is required';
//           //       }
//           //       return null;
//           //     },
//           controller: controller,
//           maxLines: maxLines,
//           minLines: maxLines,
//           decoration: InputDecoration(
//             labelText: labelField,
//             hintText: hintText,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Column(
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
          decoration: InputDecoration(
            labelText: labelField,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
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
          ),
        ),
      ],
    );
  }
}
