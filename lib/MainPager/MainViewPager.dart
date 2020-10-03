import 'package:flutter/material.dart';
import '../MainPager/BuyCallActivity/BuyCallActivity.dart';
import '../MainPager/HomeActivity/HomeActivity.dart';
import '../MainPager/MeActivity/MeActivity.dart';
import '../Values/appColors.dart';
import '../localization/language_constants.dart';
import '../main.dart';

class MainViewPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainViewPagerState();
}

class MainViewPagerState extends State<MainViewPager> {
  int curPage = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    HomeActivity(),
    BuyCallActivity(),
    MeActivity(),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: curPage);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: Container(
        height: 50.0,
        color: appColors.color_tabbar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: iconBtnAppbar("assets/icons/ic_home.png", 0),
            ),
            Expanded(
              child: iconBtnAppbar("assets/icons/ic_buycall.png", 1),
            ),
            Expanded(
              child: iconBtnAppbar("assets/icons/ic_me.png", 2),
            ),
          ],
        ),
      ),
    );
  }

  iconBtnAppbar(String icons, int index) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          curPage = index;
        }),
      },
      child: Container(
        child: Image.asset(
          icons,
          width: 25.0,
          height: 25.0,
          color: curPage == index
              ? appColors.color_tab_selected
              : appColors.color_tab_non_selected,
        ),
      ),
    );
  }
  void onPageChanged(int page) {
    setState(() {
      this.curPage = page;
    });
  }
  Widget _SwithPage(index) {
    switch (index) {
      case 0:
        return HomeActivity();
      case 1:
        return BuyCallActivity();
      case 2:
        return MeActivity();
    }
  }
}
