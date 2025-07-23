import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/features/auth/forget_password.dart';
import 'package:shop_store/features/auth/register_screen.dart';
import 'package:shop_store/features/user/presntation/screens/home/home_screen.dart';

import 'package:shop_store/core/utilities/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // bool obscurePassword = true;

    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior
            .opaque, // هذه مهمة حتى تلتقط الضغط حتى بالمناطق الفارغة
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Container(
              height: 300,
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          'login'.tr(),
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            // fontFamily: 'LANTX',
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'phone_number'.tr(),
                          style: const TextStyle(
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                              // fontFamily: 'LANTX',
                              color: AppColors.labelColor),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'enter_phone'.tr(),
                            hintStyle:
                                const TextStyle(color: AppColors.hintextColor),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                  'assets/images/profile/phone.svg',
                                  width: 20,
                                  height: 20,
                                  color: AppColors.fontColor),
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
                            hintStyle:
                                const TextStyle(color: AppColors.hintextColor),
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
                        const SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(right: 250.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgertPassword()),
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                "did_you_forget_your_password".tr(),
                                style: const TextStyle(
                                  color: AppColors.mainColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.mainColor,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                backgroundColor: AppColors.mainColor,
                                foregroundColor: Colors.white),
                            child: Text(
                              "login".tr(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "?didn’t_have_accout".tr(),
                              style: const TextStyle(
                                color: AppColors.secondFontColor,
                                // decoration: TextDecoration.underline,
                                // fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()),
                                );
                              },
                              child: Text(
                                'create_account'.tr(),
                                style: const TextStyle(
                                  color: AppColors.mainColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.mainColor,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
