import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shop_store/auth/set_new_password.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/auth/forget_password.dart';

class OtpCode extends StatefulWidget {
  const OtpCode({super.key});

  @override
  State<OtpCode> createState() => _OtpCodeState();
}

class _OtpCodeState extends State<OtpCode> {
  @override
  Widget build(BuildContext context) {
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
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "verfication_your_code".tr(),
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "enter_resert_code".tr(),
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    keyboardType: const TextInputType.numberWithOptions(
                        decimal: false, signed: false),
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      fieldOuterPadding:
                          const EdgeInsets.symmetric(horizontal: 1),
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      selectedColor: AppColors.mainColor,
                      activeColor: AppColors.mainColor,
                      inactiveColor: Colors.grey,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: false,
                    mainAxisAlignment: MainAxisAlignment.center,
                    onChanged: (value) {
                      print("Code entered: $value");
                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                    validator: (value) {
                      if (value == null || value.length != 4) {
                        return "please add four numbers";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SetNewPassword()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: AppColors.mainColor,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "verfication".tr(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "didn't_recived_code".tr(),
                        style: const TextStyle(color: AppColors.hintextColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgertPassword()),
                          );
                        },
                        child: Text(
                          "resend_code".tr(),
                          style: const TextStyle(
                            color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
