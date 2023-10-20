import 'package:flutter/material.dart';

class IntButton {
  IntButton({required this.number, required this.changeNumber});

  Function changeNumber;
  final int number;

  StatelessWidget getButton() {
    return FloatingActionButton(
      onPressed: () => changeNumber(number),
      tooltip: 'Change Number',
      child: Text(number.toString()),
    );
  }
}
