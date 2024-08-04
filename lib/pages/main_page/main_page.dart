import 'package:flutter/material.dart';
import 'package:inastagram/pages/home_page/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  Widget body() {
    switch (_index) {
      case 0:
        return const HomePage(email: "ADSKJLDASHKL");
      case 1:
        return Container(
          color: Colors.red,
          width: double.infinity,
          height: double.infinity,
        );

      case 2:
        return Container(
          color: Colors.yellow,
          width: double.infinity,
          height: double.infinity,
        );

      case 3:
        return Container(
          color: Colors.grey,
          width: double.infinity,
          height: double.infinity,
        );

      case 4:
        return Container(
          color: Colors.green,
          width: double.infinity,
          height: double.infinity,
        );

      default:
        return Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(_index == 0 ? Icons.home : Icons.home_outlined),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(_index == 1 ? Icons.search : Icons.search_outlined),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(_index == 2
                    ? Icons.add_box_rounded
                    : Icons.add_box_outlined),
                label: 'New Post'),
            BottomNavigationBarItem(
                icon: Icon(
                    _index == 3 ? Icons.favorite : Icons.favorite_border_sharp),
                label: 'Activity'),
            BottomNavigationBarItem(
                icon: Icon(_index == 4
                    ? Icons.account_circle
                    : Icons.account_circle_outlined),
                label: 'Profile'),
          ]),
    );
  }
}
