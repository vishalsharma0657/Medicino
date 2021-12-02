import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  // const InputField({ Key? key }) : super(key: key);
  String txt;
  bool pswd;
  InputField(this.txt, this.pswd);

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
            style: const TextStyle(fontSize: 18, color: Colors.white),
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.yellow,
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
