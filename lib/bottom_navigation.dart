import 'package:flearno/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    Container(color: Colors.green[100]),
    Container(color: Colors.blue[100]),
    Container(color: Colors.orange[100]),
    Container(color: Colors.purple[100]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flearnoo"),
        backgroundColor: Colors.blueAccent[100],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset(_selectedIndex == 0
                  ? "assets/vectors/home-bold.svg"
                  : "assets/vectors/home-outline.svg")),
          BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset(_selectedIndex == 1
                  ? "assets/vectors/search-bold.svg"
                  : "assets/vectors/search-outline.svg")),
          BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset(_selectedIndex == 2
                  ? "assets/vectors/add-square-bold.svg"
                  : "assets/vectors/add-square-outline.svg")),
          BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset(_selectedIndex == 3
                  ? "assets/vectors/video-play-bold.svg"
                  : "assets/vectors/video-play-outline.svg")),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.all(3),
                  child: _selectedIndex == 4
                      ? Icon(Icons.account_circle, color: Colors.grey[800])
                      : Icon(Icons.account_circle, color: Colors.grey[600])))
        ],
      ),
    );
  }
}
