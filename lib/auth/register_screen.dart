import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
                    'create account'.tr(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'name'.tr(),
                    style: const TextStyle(fontSize: 25),
                  ),
                  CustomWidget(
                    hintText: "enter_name".tr(),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'address'.tr(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  CustomWidget(
                    hintText: "enter_address".tr(),
                    svgPath: "assets/images/location_icon.svg",
                    onIconTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationRegister()),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'zone'.tr(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  CustomWidget(hintText: "zone".tr()),
                  const SizedBox(height: 20),
                  Text(
                    'phone_number'.tr(),
                    style: const TextStyle(
                        fontSize: 20, color: AppColors.labelColor),
                  ),
                  const SizedBox(height: 10),
                  CustomWidget(hintText: 'enter_phone'.tr()),
                  const SizedBox(height: 20),
                  Text('password'.tr()),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
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
