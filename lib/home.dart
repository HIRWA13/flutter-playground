import 'package:flutter/material.dart';

import 'bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flearnoo"),
        backgroundColor: Colors.blueAccent[100],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
