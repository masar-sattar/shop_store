import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/auth/login_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class ForgertPassword extends StatelessWidget {
  const ForgertPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // العنوان والشعار
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
                  Text(
                    "forget_password".tr(),
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "enter your phone number will send you code to rechange your password"
                        .tr(),
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),

                  // هنا نضيف حقل الهاتف
                  // CustomWidget(hintText: 'enter_phone'.tr()),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter_phone".tr(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: AppColors.mainColor,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("send_code".tr()),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "are_you_remmember_password".tr(),
                        style: const TextStyle(color: AppColors.ligtgray),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: Text(
                          "login".tr(),
                          style: const TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
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
