// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:shop_store/profile/presntation%20layer/screens/main_profile_screen.dart';
// import 'package:shop_store/search/main_search_screen.dart';
// import 'package:shop_store/stores/main_store_screen.dart';
// import 'package:shop_store/user/presntation/screens/home/main_home_screen.dart';
// import 'package:shop_store/user/presntation/widgets/navigator_tab.dart';

// class NavigatorButtonScreen extends StatefulWidget {
//   final void Function(Widget w)? setPage;
//   const NavigatorButtonScreen({super.key, this.setPage});

//   @override
//   State<NavigatorButtonScreen> createState() => _NavigatorButtonScreenState();
// }

// class _NavigatorButtonScreenState extends State<NavigatorButtonScreen> {
//   int currentIndex = 0;

//   final List<Widget> pages = const [
//     MainHomeScreen(),
//     MainStoreScreen(),
//     MainSearchScreen(),
//     MainProfileScreen(),
//   ];

//   void onItemTapped(int index) {
//     if (index < pages.length) {
//       setState(() {
//         currentIndex = index;
//         if (widget.setPage != null) {
//           widget.setPage!(pages[currentIndex]);
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           NavigatorTab(
//             title: 'home'.tr(),
//             iconPath: 'assets/images/navigator_images/home.svg',
//             isSelected: currentIndex == 0,
//             onTap: () => onItemTapped(0),
//           ),
//           NavigatorTab(
//             title: 'store'.tr(),
//             iconPath: 'assets/images/navigator_images/stores.svg',
//             isSelected: currentIndex == 1,
//             onTap: () => onItemTapped(1),
//           ),
//           SizedBox(
//             width: 80,
//           ),
//           // NavigatorTab(
//           //   widget: SizedBox(
//           //     width: 80,
//           //   ),
//           //   title: 'search'.tr(),
//           //   iconPath: 'assets/images/navigator_images/search.svg',
//           //   isSelected: currentIndex == 2,
//           //   onTap: () => onItemTapped(2),
//           // ),
//           NavigatorTab(
//             title: 'search'.tr(),
//             iconPath: 'assets/images/navigator_images/search.svg',
//             isSelected: currentIndex == 2,
//             onTap: () => onItemTapped(2),
//           ),
//           NavigatorTab(
//             title: 'profile'.tr(),
//             iconPath: 'assets/images/navigator_images/profile.svg',
//             isSelected: currentIndex == 3,
//             onTap: () => onItemTapped(3),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_store/features/user/presntation/widgets/navigator_tab.dart';

class NavigatorButtonScreen extends StatelessWidget {
  final int currentIndex;
  final void Function(int index)? onTabChanged;

  const NavigatorButtonScreen({
    super.key,
    required this.currentIndex,
    this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigatorTab(
            title: 'home'.tr(),
            iconPath: 'assets/images/navigator_images/home.svg',
            isSelected: currentIndex == 0,
            onTap: () => onTabChanged?.call(0),
          ),
          NavigatorTab(
            title: 'store'.tr(),
            iconPath: 'assets/images/navigator_images/stores.svg',
            isSelected: currentIndex == 1,
            onTap: () => onTabChanged?.call(1),
          ),
          const SizedBox(width: 80), // فراغ لزر السلة
          NavigatorTab(
            title: 'search'.tr(),
            iconPath: 'assets/images/navigator_images/search.svg',
            isSelected: currentIndex == 2,
            onTap: () => onTabChanged?.call(2),
          ),
          NavigatorTab(
            title: 'profile'.tr(),
            iconPath: 'assets/images/navigator_images/profile.svg',
            isSelected: currentIndex == 3,
            onTap: () => onTabChanged?.call(3),
          ),
        ],
      ),
    );
  }
}
