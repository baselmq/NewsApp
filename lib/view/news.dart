import 'package:flutter/material.dart';
import 'package:news/components/card_news.dart';
import 'package:news/controller/controller_news.dart';
import 'package:news/models/model_news.dart';

class ScreenNews extends StatelessWidget {
  const ScreenNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelNews> data = ControllerNews.dataNews;
    return Scaffold(
      body: ListView.builder(
          itemCount: ControllerNews.dataLength,
          itemBuilder: ((context, index) {
            ModelNews snapshot = data[index];
            return CardNews(
              title: snapshot.title,
              image: snapshot.urlImage,
              urlPage: snapshot.urlPage,
            );
          })),
    );
  }
}
