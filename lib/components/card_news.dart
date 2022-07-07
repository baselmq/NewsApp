import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/components/web_view.dart';

class CardNews extends StatelessWidget {
  const CardNews(
      {required this.title,
      required this.image,
      required this.urlPage,
      Key? key})
      : super(key: key);
  final String image;
  final String title;
  final String urlPage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        var route = MaterialPageRoute(
            builder: ((context) => AppWebView(url: urlPage, title: title)));
        Navigator.push(context, route);
      }),
      child: SizedBox(
        height: 100,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 10,
          child: Row(
            children: [
              Expanded(
                  child: Image.network(
                image,
                fit: BoxFit.cover,
                height: 100,
              )),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
