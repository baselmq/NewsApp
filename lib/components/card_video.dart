import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/components/web_view.dart';

class CardVideo extends StatelessWidget {
  const CardVideo(
      {required this.title, required this.image, required this.url, Key? key})
      : super(key: key);
  final String title;
  final String image;
  final String url;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var route = MaterialPageRoute(
            builder: ((context) => AppWebView(url: url, title: title)));
        Navigator.push(context, route);
      },
      child: SizedBox(
        height: 250,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 10,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Image.network(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(title,
                    style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
