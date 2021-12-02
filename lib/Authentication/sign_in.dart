import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medicino/Authentication/elevated_button.dart';
import 'package:medicino/Authentication/input_field.dart';
import 'package:medicino/Authentication/sign_up.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                // SizedBox(
                //   width: 28.0,
                // ),
                Text(
                  'Sign In',
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
            InputField('Username', false),
            Column(
              children: [
                InputField('Password', true),
                const SizedBox(
                  height: 0.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                    );
                  },
                  child: const Text(
                    'Do not have a account ? Sign up',
                    style: TextStyle(fontSize: 18.0, color: Colors.blue),
                  ),
                ),
              ],
            ),
            Button('LOGIN'),
            const SizedBox(
              height: 0.0,
            ),
            const Center(
              child: Text(
                'OR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SignInButton(
              Buttons.Google,
              text: 'Sign In with Google',
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Facebook,
              text: 'Sign In with Facebook',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
