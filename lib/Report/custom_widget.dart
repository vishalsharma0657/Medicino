// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
          flex: 6,
          child: Image.network(
            imgLink,
            loadingBuilder: (context, child, loadingProgress) {
              return loadingProgress == null
                  ? child
                  : const LinearProgressIndicator();
            },
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                txt1,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.red[900],
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Medicine-> $txt2',
                style: TextStyle(fontSize: 18.0, color: Colors.indigo[900]),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// Widget<Image> loadImage(String urll) {
//   return Image.network(urll);
// }
