import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/features/stores/main_store_screen.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/notfication.svg',
              width: 40,
              height: 40,
            ),
            onPressed: () {},
          ),
        ],
        leading: Image.asset(
          "assets/images/logo_yellow.png",
          width: 25,
          height: 25,
        ),
      ),
      body: const MainStoreScreen(),
    );
  }
}
