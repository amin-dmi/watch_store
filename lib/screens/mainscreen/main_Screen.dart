import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/screens/mainscreen/basket_Screen.dart';
import 'package:watch_store/screens/mainscreen/home_Screen.dart';
import 'package:watch_store/screens/mainscreen/profile_Screen.dart';
import 'package:watch_store/widgets/btm_nav_Item.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();

  static const home = 0;
  static const baskt = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  final List<int> _routeHistory = [BtmNavScreenIndex.home];

  int selectedIndex = BtmNavScreenIndex.home;
  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _basketKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  Future<bool> _canPop() async {
    if (map[selectedIndex]?.currentState?.canPop() ?? false) {
      map[selectedIndex]!.currentState!.pop();
    }
    if (_routeHistory.length > 1) {
      setState(() {
        _routeHistory.removeLast();
        selectedIndex = _routeHistory.last;
      });
    }
    return false;
  }

  //map[0]=> _homeKey
  //map[1]=> _basketKey
  //map[2]=> _profileKey
  late final map = {
    BtmNavScreenIndex.home: _homeKey,
    BtmNavScreenIndex.baskt: _basketKey,
    BtmNavScreenIndex.profile: _profileKey,
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double btmNavHeight = size.height * 0.1;

    return WillPopScope(
      onWillPop: _canPop,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: btmNavHeight,
                child: IndexedStack(
                  index: selectedIndex,
                  children: [
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) =>
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                    ),
                    Navigator(
                      onGenerateRoute: (settings) => MaterialPageRoute(
                          builder: (context) => const BasketScreen()),
                    ),
                    Navigator(
                      onGenerateRoute: (settings) => MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    )
                  ],
                )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: AppColors.btmNavColors,
                  height: btmNavHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BtmNavItem(
                          iconSvgPath: Assets.svg.user,
                          text: "پروفایل",
                          isActive: selectedIndex == BtmNavScreenIndex.profile,
                          onTap: () => btmNavOnPressed(
                              index: BtmNavScreenIndex.profile)),
                      BtmNavItem(
                          iconSvgPath: Assets.svg.baskt,
                          text: "سبد خرید",
                          isActive: selectedIndex == BtmNavScreenIndex.baskt,
                          onTap: () =>
                              btmNavOnPressed(index: BtmNavScreenIndex.baskt)),
                      BtmNavItem(
                          iconSvgPath: Assets.svg.home,
                          text: "خانه",
                          isActive: selectedIndex == BtmNavScreenIndex.home,
                          onTap: () =>
                              btmNavOnPressed(index: BtmNavScreenIndex.home)),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
      _routeHistory.add(selectedIndex);
    });
  }
}
