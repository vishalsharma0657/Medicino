import 'package:flutter/material.dart';
import 'package:medicino/Authentication/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicino',
      // theme: ThemeData.dark(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.red,
        ),
      ),

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignupPage();
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('MEDICINO -> MEDICINES FOR ALL.'),
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Image.asset('images/logo.png'),
    //         const Text(
    //           'Vishal and Deependu are working on this project.',
    //           style: TextStyle(
    //             fontSize: 16.0,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
