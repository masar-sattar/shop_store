import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shop_store/features/auth/splash_screen.dart';
import 'package:shop_store/features/cart/presentation%20layer/screens/another_contact_us.dart';
import 'package:shop_store/core/utilities/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      child: const ShopStore(),
    ),
  );
}

class ShopStore extends StatelessWidget {
  const ShopStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop_Store',
      theme: lightTheme,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      // home: const SplashScreen(),
      home: AnotherContactUs(),
    );
  }
}
