import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/features/auth/login_screen.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
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
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "reset_new_password".tr(),
                      style: const TextStyle(
                        color: AppColors.labelColor,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'password'.tr(),
                    style: const TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        // fontFamily: 'LANTX',
                        color: AppColors.labelColor),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: "*******",
                      hintStyle: const TextStyle(color: AppColors.hintextColor),
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
                            style: const TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: "12345qerr",
                      hintStyle: const TextStyle(color: AppColors.hintextColor),
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
                            _obscureText ? "hide".tr() : "show".tr(),
                            style: const TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: AppColors.mainColor,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "reset".tr(),
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
