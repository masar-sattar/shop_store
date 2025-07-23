import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/features/stores/presntations/screens/widgets/custom_store_container.dart';

class MainStoreScreen extends StatelessWidget {
  const MainStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 290),
              child: Text(
                "store_list".tr(),
                style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.fontColor,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomStoreContainer()),
                  );
                },
                child: const CustomStoreContainer())
          ],
        ),
      ),
    );
  }
}
