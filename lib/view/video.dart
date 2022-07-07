import 'package:flutter/material.dart';
import 'package:news/components/card_video.dart';
import 'package:news/controller/controller_video.dart';
import 'package:news/models/model_video.dart';

class ScreenVideo extends StatelessWidget {
  const ScreenVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = ControllerVideo.dataVideo;
    return Scaffold(
        body: ListView.builder(
            itemCount: ControllerVideo.dataLength,
            itemBuilder: ((context, index) {
              ModelVideo snapshot = data[index];
              return CardVideo(
                title: snapshot.title,
                image: snapshot.urlImage,
                url: snapshot.urlVideo,
              );
            })));
  }
}
