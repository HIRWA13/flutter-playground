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
        Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: FadeInImage.assetNetwork(
            placeholder: "assets/images/placeholder.jpg",
            image:
                "https://images.pexels.com/photos/4835419/pexels-photo-4835419.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
