import 'dart:math';

import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Note header",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text("note descripttion", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
        );
      },
      itemCount: 49,
    );
  }
}
