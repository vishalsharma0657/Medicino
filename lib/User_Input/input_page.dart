import 'package:flutter/material.dart';
import 'package:medicino/User_Input/slider.dart';
import 'package:medicino/User_Input/user_sex.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          const UserSex(),
          const Spacer(),
          Column(
            children: const [
              CustomSlider('Age (in years)', 19, 1, 100),
              CustomSlider('Weight (in kg)', 64, 25, 130),
              CustomSlider('Height (in cm)', 170, 120, 220),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  flex: 3,
                  child: Divider(
                    color: Colors.black,
                    thickness: 4.0,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text('Symptoms'),
                Spacer(),
                Expanded(
                  flex: 3,
                  child: Divider(
                    color: Colors.black,
                    thickness: 4.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Symptom('fever'),
                  Symptom('headache'),
                  Symptom('lorem'),
                  Symptom('ipsum'),
                  Symptom('ipsum'),
                  Symptom('ipsum'),
                  Symptom('ipsum'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14.0),
                      topRight: Radius.circular(14.0))),
              height: 47.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'NEXT',
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Symptom extends StatefulWidget {
  final String txt;
  const Symptom(this.txt, {Key? key}) : super(key: key);

  @override
  _SymptomState createState() => _SymptomState();
}

class _SymptomState extends State<Symptom> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(widget.txt),
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value!;
          });
        });
  }
}
