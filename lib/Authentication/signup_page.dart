import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medicino/Authentication/elevated_button.dart';
import 'package:medicino/Authentication/input_field.dart';
import 'package:medicino/Authentication/signin_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #DFE6ED
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("images/signup_bg.jpg"),
        //     fit: BoxFit.fill,
        //   ),
        // ),
        padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0),
        // color: const Color.fromRGBO(242, 242, 242, 1),
        // color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: const [
                // SizedBox(
                //   width: 28.0,
                // ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 14.0,
                ),
                Icon(
                  Icons.person_pin_sharp,
                  size: 35.0,
                  color: Colors.green,
                ),
              ],
            ),
            Center(
              child: ListView(
                reverse: true,
                shrinkWrap: true,
                children: [
                  const Spacer(),
                  const Spacer(),
                  InputField('Name', false),
                  const Spacer(),
                  InputField('Email', false),
                  const Spacer(),
                  InputField('Password', true),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninPage()),
                      );
                    },
                    child: const Text(
                      'Already a member? Sign in',
                      style: TextStyle(fontSize: 18.0, color: Colors.blue),
                    ),
                  ),
                  const Spacer(),
                  Button('Get Started'),
                  const Spacer(
                    flex: 2,
                  ),
                ].reversed.toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
