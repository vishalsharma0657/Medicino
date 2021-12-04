import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// ignore: camel_case_types
class output_page extends StatelessWidget {
  const output_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.blue,
        ),
        title: const Text(
          'REPORT',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
                height: 200,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset(
                      'images/boy_image.png',
                    ),
                    Image.asset(
                      'images/doctor.png',
                    ),
                    Image.asset(
                      'images/facebook_logo.png',
                    ),
                    Image.asset(
                      'images/google_logo.png',
                    ),
                  ],
                  dotSize: 8.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.white.withOpacity(0.1),
                  borderRadius: true,
                )),
          ],
        ),
      ),
    );
  }
}
