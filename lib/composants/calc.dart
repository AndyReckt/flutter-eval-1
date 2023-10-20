import 'package:test_1/composants/intbutton.dart';
import 'package:flutter/material.dart';

class Calc {
  Calc({required this.numi, required this.changeNumber});

  Function changeNumber;
  final String numi;

  Center get() {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  tooltip: "Number",
                  child: Text(numi.toString()),
                )
              ],
            ),
            const Text(" \n "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntButton(number: 1, changeNumber: changeNumber).getButton(),
                IntButton(number: 2, changeNumber: changeNumber).getButton(),
                IntButton(number: 3, changeNumber: changeNumber).getButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntButton(number: 4, changeNumber: changeNumber).getButton(),
                IntButton(number: 5, changeNumber: changeNumber).getButton(),
                IntButton(number: 6, changeNumber: changeNumber).getButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntButton(number: 7, changeNumber: changeNumber).getButton(),
                IntButton(number: 8, changeNumber: changeNumber).getButton(),
                IntButton(number: 9, changeNumber: changeNumber).getButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntButton(number: 0, changeNumber: changeNumber).getButton(),
              ],
            )
          ]),
    );
  }
}
