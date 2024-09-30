import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages  = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.orange),
    Container(color: Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        print("index: ${_selectedIndex}");
      },
      items: [
        BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/vectors/home-outline.svg")),
        BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/vectors/search-outline.svg")),
        BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/vectors/add-square-outline.svg")),
        BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/vectors/video-play-outline.svg")),
        BottomNavigationBarItem(
            label: "",
            icon: Container(
              width: 30,
              height: 30,
              padding: const EdgeInsets.all(3),
              child: Icon(Icons.account_circle, color: Colors.grey[600]),
            ))
      ],
    );
  }
}
