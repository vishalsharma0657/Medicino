import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.teal,
        child: Stack(
          children: [
            Image.asset('images/doctor.png'),
            const SpinKitWave(
              color: Colors.amber,
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
/*
const spinkit = SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
);

*/ 