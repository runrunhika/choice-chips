import 'package:choice_chips_sample/chips/scrollable_single_chilp.dart';
import 'package:choice_chips_sample/chips/scroollable_multiple_chip.dart';
import 'package:choice_chips_sample/chips/wrapped_multiple_chip.dart';
import 'package:choice_chips_sample/chips/wrapped_single_chip.dart';
import 'package:choice_chips_sample/chips/wrapped_single_icon_chip.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00e676),
        title: Text('Flutter Chips'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text(
              'Scrollable List Single Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ScrollableSingleChip(),
            SizedBox(height: 10),
            Text(
              'Wrapped List Single Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            WrappedSingleChip(),
            SizedBox(height: 10),
            Text(
              'Wrapped List Single Choice with Icon',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            WrappedSingleIconChip(),
            SizedBox(height: 10),
            Text(
              'Scrollable List Multiple Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ScrollableMultipleChip(),
            SizedBox(height: 10),
            Text(
              'Wrapped List Multiple Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            WrappedMultipleChip(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}