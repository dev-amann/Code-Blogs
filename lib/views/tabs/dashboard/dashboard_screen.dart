import 'package:code_blogs/utils/colors.dart';
import 'package:code_blogs/utils/strings.dart';
import 'package:code_blogs/views/tabs/articles/articles_screen.dart';
import 'package:code_blogs/views/tabs/favorite/favorite_screen.dart';
import 'package:code_blogs/views/tabs/feeds/feed_screen.dart';
import 'package:code_blogs/views/tabs/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
              backgroundColor: CustomColors.cardColor,
              icon: const Icon(
                Icons.explore_outlined,
              ),
              label: Str.feed),
          BottomNavigationBarItem(
              backgroundColor: CustomColors.cardColor,
              icon: const Icon(
                Icons.add_box_outlined,
              ),
              label: Str.article),
          BottomNavigationBarItem(
              backgroundColor: CustomColors.cardColor,
              icon: const Icon(
                Icons.favorite_outline,
              ),
              label: Str.favorite),
          BottomNavigationBarItem(
              backgroundColor: CustomColors.cardColor,
              icon: const Icon(
                Icons.person_outline,
              ),
              label: Str.profile)
        ],
      ),
    );
  }

  Widget currentScreen() {
    switch (_currentIndex) {
      case 0:
        return const FeedScreen();
      case 1:
        return const ProfileScreen();
      case 2:
        return const FavoriteScreen();
      case 3:
        return const ArticlesScreen();
      default:
        return const FeedScreen();
    }
  }

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
