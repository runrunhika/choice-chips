import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class WrappedSingleChip extends StatefulWidget {
  @override
  _WrappedSingleChipState createState() => _WrappedSingleChipState();
}

class _WrappedSingleChipState extends State<WrappedSingleChip> {
  int tag = 1;
  List<String> options = [
    'さ',
    'し',
    'す',
    'せ',
    'そ',
    'た',
    'ち',
    'つ',
    'て',
    'と',
  ];

  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
      value: tag,
      onChanged: (val) => setState(() => tag = val),
      choiceItems: C2Choice.listFrom(
        source: options,
        value: (i, v) => i,
        label: (i, v) => v,
      ),
      wrapped: true,
    );
  }
}
