import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final String txt;
  final int val;
  final int minVal;
  final int maxVal;
  const CustomSlider(this.txt, this.val, this.minVal, this.maxVal, {Key? key})
      : super(key: key);
  @override
  CustomSliderState createState() => CustomSliderState();
}

class CustomSliderState extends State<CustomSlider> {
  double _val = -1;
  double minVal = 0;
  double maxVal = 0;
  @override
  Widget build(BuildContext context) {
    if (_val == -1) {
      minVal = widget.minVal.toDouble();
      maxVal = widget.maxVal.toDouble();
      _val = widget.val.toDouble();
    }
    final int num = _val.toInt();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.txt,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
        ),
        Row(
          children: [
            Expanded(
              flex: 7,
              child: Slider(
                label: _val.round().toString(),
                value: _val,
                onChanged: (value) {
                  setState(() {
                    _val = value.round().toDouble();
                  });
                },
                min: minVal,
                max: maxVal,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Text('$num'),
            ),
            const Spacer(),
          ],
        )
      ],
    );
  }
}
