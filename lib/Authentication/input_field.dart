import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String txt;
  final bool pswd;
  const InputField(this.txt, this.pswd, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
          style: const TextStyle(fontSize: 20.0),
        ),
        const SizedBox(
          height: 12.0,
        ),
        SizedBox(
          height: 50.0,
          child: TextFormField(
            obscureText: pswd == true,
            style: const TextStyle(
              fontSize: 18,
            ),
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
