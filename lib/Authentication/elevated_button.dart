import 'package:flutter/material.dart';
import 'package:medicino/User_Input/input_page.dart';

class Button extends StatelessWidget {
  final String txt;
  const Button(this.txt, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InputPage()),
        );
      },
      // style: ElevatedButton.styleFrom(
      //   primary: Colors.teal,
      // ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.teal))),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: const TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
