import 'package:flutter/material.dart';
import 'package:medicino/Report/custom_carousel.dart';
import 'package:medicino/User_Input/fetching_data.dart';
import 'package:medicino/User_Input/symptoms.dart';

// ignore: camel_case_types
class output_page extends StatefulWidget {
  // List<CustomWidget> ls;
  const output_page({Key? key}) : super(key: key);

  @override
  State<output_page> createState() => _output_pageState();
}

class _output_pageState extends State<output_page> {
  @override
  void dispose() {
    super.dispose();
    dis.clear();
    med.clear();
    img.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.blue[900],
        ),
        title: Text(
          'REPORT',
          style: TextStyle(
            color: Colors.blue[900],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: CustomCarousel(),
          ),
          Row(
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
              Text(
                'Some tips',
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
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
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(
                        Icons.health_and_safety_outlined,
                        color: Colors.teal,
                      ),
                      title: Text(
                        tips[index],
                        style: const TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.w500),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}

List<String> tips = [
  'Eat nourishing food.',
  'Sleep seven to eight hours a night.',
  'Keep company with good people.',
  'Get regular exercise.',
  'Limit sugary drinks.',
  'Stay hydrated.',
  'Have regular check-ups.'
];
