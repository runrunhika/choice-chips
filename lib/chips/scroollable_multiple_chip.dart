import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class ScrollableMultipleChip extends StatefulWidget {
  @override
  _ScrollableMultipleChipState createState() => _ScrollableMultipleChipState();
}

class _ScrollableMultipleChipState extends State<ScrollableMultipleChip> {
  List<String> tags = [];
  List<String> options = [
    'は',
    'ひ',
    'ふ',
    'へ',
    'ほ',
    'ま',
    'み',
    'む',
    'め',
    'も',
  ];

  @override
  Widget build(BuildContext context) {
    return ChipsChoice.multiple(
      value: tags,
      onChanged: (val) => setState(() => tags = val),
      choiceItems: C2Choice.listFrom<String, String>(
        source: options,
        value: (i, v) => v,
        label: (i, v) => v,
      ),
      choiceStyle: C2ChoiceStyle(
        showCheckmark: false,
      ),
      choiceActiveStyle: C2ChoiceStyle(
        color: Colors.red,
      ),
    );
  }
}