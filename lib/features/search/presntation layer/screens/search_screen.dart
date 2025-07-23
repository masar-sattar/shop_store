import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_store/features/search/main_search_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, -10),
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.black,
            constraints: const BoxConstraints.tightFor(width: 55, height: 70),
            shape: const StadiumBorder(),
            elevation: 0,
            child: SvgPicture.asset(
              "assets/images/navigator_images/pasketinfloatingbutton.svg",
              width: 28,
              height: 28,
              // color: Colors.amber,
            ),
          ),
        ),
      ),
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
      body: const MainSearchScreen(),
    );
  }
}
