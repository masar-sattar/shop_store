import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/features/profile/presntation%20layer/screens/main_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      body: const MainProfileScreen(),
    );
  }
}
