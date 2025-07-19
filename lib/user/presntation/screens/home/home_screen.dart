// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shop_store/cart/presentation%20layer/screens/cart_main_screen.dart';
// import 'package:shop_store/core/utilities/app_colors.dart';
// import 'package:shop_store/user/presntation/screens/home/notification_screen.dart';
// import 'package:shop_store/user/presntation/screens/home/main_home_screen.dart';
// import 'package:shop_store/user/presntation/widgets/navigator_button_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   Widget currenPage = MainHomeScreen();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: SvgPicture.asset(
//               'assets/images/notfication.svg',
//               width: 40,
//               height: 40,
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const NotificationScreen(),
//                 ),
//               );
//             },
//           ),
//         ],
//         leading: Image.asset(
//           "assets/images/logo_yellow.png",
//           width: 25,
//           height: 25,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: Transform.translate(
//         offset: const Offset(0, -10),
//         child: Container(
//           padding: const EdgeInsets.all(6),
//           decoration: const BoxDecoration(
//             color: Colors.transparent,
//             shape: BoxShape.circle,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black26,
//                 blurRadius: 8,
//                 offset: Offset(0, 10),
//               ),
//             ],
//           ),
//           child: RawMaterialButton(
//             onPressed: () {},
//             fillColor: Colors.black,
//             constraints: const BoxConstraints.tightFor(width: 55, height: 70),
//             shape: const StadiumBorder(),
//             elevation: 0,
//             child: IconButton(
//               icon: SvgPicture.asset(
//                 "assets/images/navigator_images/pasketinfloatingbutton.svg",
//                 width: 28,
//                 height: 28,
//                 color: AppColors.mainColor,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => CartMainScreen(),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//       body: currenPage,
//       bottomNavigationBar: NavigatorButtonScreen(
//         setPage: (page) {
//           currenPage = page;
//           setState(() {});
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/cart/presentation%20layer/screens/cart_main_screen.dart';
import 'package:shop_store/core/utilities/app_colors.dart';
import 'package:shop_store/user/presntation/screens/home/notification_screen.dart';
import 'package:shop_store/user/presntation/widgets/navigator_button_screen.dart';
import 'package:shop_store/profile/presntation%20layer/screens/main_profile_screen.dart';
import 'package:shop_store/search/main_search_screen.dart';
import 'package:shop_store/stores/main_store_screen.dart';
import 'package:shop_store/user/presntation/screens/home/main_home_screen.dart';

class HomeScreen extends StatefulWidget {
  final int initialIndex;
  const HomeScreen({super.key, this.initialIndex = 0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> pages = const [
    MainHomeScreen(),
    MainStoreScreen(),
    MainSearchScreen(),
    MainProfileScreen(),
  ];

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
          ),
        ],
        leading: Image.asset(
          "assets/images/logo_yellow.png",
          width: 25,
          height: 25,
        ),
      ),

      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, -10),
        child: RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartMainScreen(),
              ),
            );
          },
          fillColor: Colors.black,
          constraints: const BoxConstraints.tightFor(width: 55, height: 70),
          shape: const StadiumBorder(),
          elevation: 8,
          child: SvgPicture.asset(
            "assets/images/navigator_images/pasketinfloatingbutton.svg",
            width: 28,
            height: 28,
            color: AppColors.mainColor,
          ),
        ),
      ),

      /// ✅ الشريط السفلي
      bottomNavigationBar: NavigatorButtonScreen(
        currentIndex: currentIndex,
        onTabChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
