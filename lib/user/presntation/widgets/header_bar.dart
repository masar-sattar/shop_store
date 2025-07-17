// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';

// // class HeaderBar extends StatefulWidget {
// //   const HeaderBar({super.key});

// //   @override
// //   State<HeaderBar> createState() => _HeaderBarState();
// // }

// // class _HeaderBarState extends State<HeaderBar> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return  appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         elevation: 0,
// //         actions: [
// //           IconButton(
// //             icon: SvgPicture.asset(
// //               'assets/images/notfication.svg',
// //               width: 40,
// //               height: 40,
// //             ),
// //             onPressed: () {},
// //           ),
// //         ],
// //         leading: Image.asset(
// //           "assets/images/logo_yellow.png",
// //           width: 25,
// //           height: 25,
// //         ),
// //       ),
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class HeaderBar extends StatelessWidget {
//   const HeaderBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//       height: kToolbarHeight,
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             "assets/images/logo_yellow.png",
//             width: 30,
//             height: 30,
//           ),
//           IconButton(
//             icon: SvgPicture.asset(
//               'assets/images/notfication.svg',
//               width: 24,
//               height: 24,
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
