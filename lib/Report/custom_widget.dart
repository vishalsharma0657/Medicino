// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class CustomWidget extends StatelessWidget {
  String txt1 = "";
  String txt2 = "";
  String imgLink = "";
  CustomWidget(this.txt1, this.txt2, this.imgLink, {Key? key})
      : super(key: key);
  // CustomWidget({this.txt1, this.txt2, Key? key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    imgLink = 'http://' + imgLink.substring(16);
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: imgLink,
            errorWidget: (context, url, error) {
              return Image.network(imgLink);
            },
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Text(
                  txt1,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red[900],
                      fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: Text(
                  'Medicine-> $txt2 ',
                  style: TextStyle(fontSize: 18.0, color: Colors.indigo[900]),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
