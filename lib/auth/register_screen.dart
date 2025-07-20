import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/driver/presentaion/screens/selector_login_driver.dart';
import 'package:shop_store/auth/location_register.dart';
import 'package:shop_store/user/presntation/widgets/custom_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            color: AppColors.mainColor,
            child: Center(
              child: Image.asset(
                'assets/images/logo_sorce.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'create_account'.tr(),
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: AppColors.labelColor),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'name'.tr(),
                    style: const TextStyle(
                        fontSize: 25, color: AppColors.labelColor),
                  ),
                  CustomWidget(
                    hintText: "enter_name".tr(),
                    hintIconPath: "assets/images/persone.svg",
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'address'.tr(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: AppColors.labelColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  CustomWidget(
                    hintText: "enter_address".tr(),
                    svgPath: "assets/images/location_icon.svg",
                    hintIconPath: "assets/images/location.svg",
                    onIconTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LocationRegister()),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'zone'.tr(),
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: AppColors.labelColor),
                  ),
                  CustomWidget(
                      hintText: "zone".tr(),
                      hintIconPath: "assets/images/location.svg",
                      svgPath: "assets/images/location.svg"),
                  const SizedBox(height: 20),
                  Text(
                    'phone_number'.tr(),
                    style: const TextStyle(
                        fontSize: 20, color: AppColors.labelColor),
                  ),
                  const SizedBox(height: 10),
                  CustomWidget(
                    hintText: 'enter_phone'.tr(),
                    hintIconPath: "assets/images/profile/phone.svg",
                  ),
                  const SizedBox(height: 20),
                  Text('password'.tr()),
                  const SizedBox(height: 10),
                  TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: "*******",
                      hintStyle: TextStyle(color: AppColors.hintextColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/images/circle-lock-02.svg',
                          width: 20,
                          height: 20,
                          color: AppColors.fontColor,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14.0, vertical: 14.0),
                          child: Text(
                            _obscureText ? "show".tr() : "hide".tr(),
                            style: TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SelectorLoginDriver()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: AppColors.mainColor,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("follow".tr()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
