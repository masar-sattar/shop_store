import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/auth/forget_password.dart';
import 'package:shop_store/auth/register_screen.dart';
import 'package:shop_store/user/presntation/screens/home/home_screen.dart';
import 'package:shop_store/user/presntation/widgets/custom_widget.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
// import 'package:easy_localization/easy_localization.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // bool obscurePassword = true;

    return Scaffold(
      body: Column(
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
              padding: const EdgeInsets.all(8.0),
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
                      CustomWidget(hintText: 'enter_phone'.tr()),
                      const SizedBox(height: 25),
                      Text(
                        'password'.tr(),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgertPassword()),
                            );
                          },
                          child: Text(
                            'did you forget your password'.tr(),
                            style: const TextStyle(
                              color: AppColors.mainColor,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.mainColor,
                              fontSize: 20,
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
                              padding: const EdgeInsets.symmetric(vertical: 16),
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
                            '?didn’t have accout'.tr(),
                            style: const TextStyle(
                              // color: AppColors.mainColor,
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
                              'create account'.tr(),
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
    );
  }
}
