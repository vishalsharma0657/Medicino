import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // const Button({ Key? key }) : super(key: key);
  String txt;
  Button(this.txt);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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