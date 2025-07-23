import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/driver/presentaion/screens/login_driver.dart';
import 'package:shop_store/features/auth/login_screen.dart';

class SelectorLoginDriver extends StatefulWidget {
  const SelectorLoginDriver({super.key});

  @override
  State<SelectorLoginDriver> createState() => _SelectorLoginDriverState();
}

class _SelectorLoginDriverState extends State<SelectorLoginDriver> {
  String selectedRole = 'user';
  final List<Map<String, dynamic>> roles = [
    {
      'key': 'user',
      'label': 'user'.tr(), // نترجم هنا فقط
      'image': 'assets/images/user.png',
    },
    {
      'key': 'merchant',
      'label': 'merchant'.tr(),
      'image': 'assets/images/merchant.png',
    },
    {
      'key': 'driver',
      'label': 'driver'.tr(),
      'image': 'assets/images/driver.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'hello'.tr(),
              style: const TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('please_select_your_postion_,drivr_or_merchant'.tr(),
                style: const TextStyle(
                    fontSize: 20, color: AppColors.hintextColor)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 0),
              child: ListView.builder(
                itemCount: roles.length,
                itemBuilder: (context, index) {
                  final role = roles[index];
                  final roleKey = role['key'] as String;
                  final roleLabel = role['label'] as String;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedRole = roleKey.tr();
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedRole == roleKey
                              ? AppColors.mainColor
                              : Colors.grey.shade300,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Transform.translate(
                            offset: const Offset(0, -30),
                            child: Radio<String>(
                              value: roleKey,
                              groupValue: selectedRole,
                              onChanged: (value) {
                                setState(() {
                                  selectedRole = value!;
                                });
                              },
                              activeColor: AppColors.mainColor,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              roleLabel,
                              style: const TextStyle(
                                  fontSize: 30, color: AppColors.hintextColor),
                            ),
                          ),
                          Image.asset(
                            role['image'],
                            width: 80,
                            height: 80,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: AppColors.mainColor,
                  side: const BorderSide(color: AppColors.mainColor, width: 2),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  if (selectedRole.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("please select the type".tr()),
                        backgroundColor: Colors.redAccent,
                      ),
                    );
                    return;
                  }

                  if (selectedRole == 'user') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginDriver()),
                    );
                  }
                },
                child: Text(
                  'start_now'.tr(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
