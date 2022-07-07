import 'package:flutter/material.dart';
import 'package:news/components/appbar_custom.dart';
import 'package:news/components/navigation_custom.dart';
import 'package:news/view/news.dart';
import 'package:news/view/video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _indexPage = 0;
  final List _pages = [
    const ScreenNews(),
    const ScreenVideo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(),
        body: _pages[_indexPage],
        bottomNavigationBar: CustomNavigationBar(
          indexPage: _indexPage,
          onPress: (value) {
            setState(() {
              _indexPage = value;
            });
          },
        ));
  }
}
