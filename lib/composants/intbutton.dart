import 'package:flutter/material.dart';

class IntButton {
  IntButton({required this.number, required this.changeNumber});

  Function changeNumber;
  final int number;

  TextButton getButton() {
    return TextButton(
      onPressed: () => changeNumber(number),
      child: Text(
        number.toString(),
        style: const TextStyle(color: Colors.indigo),
        textAlign: TextAlign.center,
      ),
    );
  }
}
