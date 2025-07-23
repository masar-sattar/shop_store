import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/profile/presntation%20layer/widgets/custom_profile.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class DetailsProfile extends StatefulWidget {
  // final File? imageFile;
  const DetailsProfile({
    super.key,
  });

  @override
  State<DetailsProfile> createState() => _DetailsProfileState();
}

class _DetailsProfileState extends State<DetailsProfile> {
  File? imageFile;
  final ImagePicker picker = ImagePicker();
  Future<void> pickImage() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'personal_profile'.tr(),
          style: const TextStyle(fontSize: 20, color: AppColors.fontColor),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/profile/lucide_edit.svg',
              width: 24,
              height: 24,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 190,
            child: Stack(
              clipBehavior: Clip.none, // مهم حتى لا تُقص الصورة
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Colors.grey[200],
                ),
                Positioned(
                  bottom: -40, // نصف قطر الصورة تقريبًا
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      GestureDetector(
                        onTap: pickImage,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColors.mainColor, width: 2),
                          ),
                          child: imageFile != null
                              ? CircleAvatar(
                                  radius: 45,
                                  backgroundImage: FileImage(imageFile!),
                                )
                              : const CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.grey,
                                  child: Icon(Icons.person,
                                      size: 40, color: Colors.white),
                                ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.containColor,
                          ),
                          padding: const EdgeInsets.all(6),
                          child: const Icon(Icons.more_horiz, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomProfileScreen(
              colorContainer: AppColors.containColor,
              lableName: "محمد جاسم",
              phonNum: "",
              imagePath: "assets/images/persone.svg",
              iconColor: AppColors.fontColor,
              onTap: () {},
              showArrow: false,
              fontColor: AppColors.fontColor),
          CustomProfileScreen(
            colorContainer: AppColors.containColor,
            lableName: "07722284111 ",
            phonNum: "",
            imagePath: "assets/images/profile/phone.svg",
            iconColor: AppColors.fontColor,
            fontColor: AppColors.fontColor,
            onTap: () {},
            showArrow: false,
          ),
          CustomProfileScreen(
            colorContainer: AppColors.containColor,
            lableName: "بغداد, محطة القطار, شارع2054 ",
            phonNum: "",
            imagePath: "assets/images/location.svg",
            iconColor: AppColors.fontColor,
            fontColor: AppColors.fontColor,
            onTap: () {},
            showArrow: false,
          ),
          CustomProfileScreen(
            colorContainer: AppColors.containColor,
            lableName: " تاريخ الانضمام منذ 3 شهور",
            phonNum: "",
            imagePath: "assets/images/profile/joined_date.svg",
            iconColor: AppColors.fontColor,
            fontColor: AppColors.fontColor,
            onTap: () {},
            showArrow: false,
          ),
        ],
      ),
    );
  }
}
