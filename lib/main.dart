import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shop_store/core/utilities/theme.dart';

// import 'package:shop_store/user/presntation/screens/auth/location_register.dart';
// import 'package:shop_store/profile/presntation%20layer/screens/main_profile_screen.dart';
import 'package:shop_store/user/presntation/screens/home/home_screen.dart';

// import 'package:shop_store/stores/presntations/screens/store_screen.dart';

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
      // home: CategoryScreen(),
      // home: const ProfileScreen(),
      // home: ItemDetails(),
      // home: StoreScreen(),
      // home: LocationRegister(),
      home: HomeScreen(),
      // home: RegisterScreen(),
      // home: ContactUsScreen(),
    );
  }
}
