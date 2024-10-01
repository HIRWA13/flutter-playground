import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child:
              Image.asset("assets/images/placeholder.jpg", fit: BoxFit.cover),
        ), 
      ],
    );
  }
}
