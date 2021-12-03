import 'package:flutter/material.dart';

class UserSex extends StatefulWidget {
  const UserSex({Key? key}) : super(key: key);

  @override
  _UserSexState createState() => _UserSexState();
}

class _UserSexState extends State<UserSex> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      GestureDetector(
        onTap: () {
          setState(() {
            _value = 1;
          });
        },
        child: Row(
          children: [
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 1;
                });
              },
            ),
            const Text(
              'Male',
              style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _value = 2;
          });
        },
        child: Row(
          children: [
            Radio(
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 2;
                });
              },
            ),
            const Text('Female'),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _value = 3;
          });
        },
        child: Row(
          children: [
            Radio(
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 3;
                });
              },
            ),
            const Text('Other'),
          ],
        ),
      ),
    ]);
  }
}
