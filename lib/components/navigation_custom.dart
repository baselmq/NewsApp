import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar(
      {required this.indexPage, required this.onPress, Key? key})
      : super(key: key);
  final int indexPage;
  final Function(int) onPress;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 60.0,
      color: Colors.indigo,
      backgroundColor: Colors.white,
      items: [
        Icon(
          Icons.article,
          color: indexPage == 0 ? Colors.white : Colors.grey,
        ),
        Icon(
          Icons.ondemand_video_outlined,
          color: indexPage == 1 ? Colors.white : Colors.grey,
        ),
      ],
      onTap: (value) {
        onPress(value);
      },
    );
  }
}
