import 'package:flutter/material.dart';
import 'package:medicino/Report/custom_widget.dart';
import 'package:medicino/User_Input/fetching_data.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (dis.isEmpty) {
      return const Zero();
    } else {
      return ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: dis.length,
          itemBuilder: (context, index) {
            return CustomWidget(dis[index], med[index], img[index]);
          });
    }
  }
}

class Zero extends StatelessWidget {
  const Zero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: 6, child: Image.asset('images/healthy.jpg')),
        Expanded(
          child: Text(
            "Stay healthy and happy.",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue[900],
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
