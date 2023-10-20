import 'package:test_1/composants/intbutton.dart';
import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  String numi = "0";

  void changeNumber(int to) {
    setState(() {
      numi = to.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Text(numi.toString()),
      ),
    );
  }
}
