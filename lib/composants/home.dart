import 'package:flutter/material.dart';
import 'package:test_1/composants/calc.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  bool isCalc = true;
  String numi = "0";

  void changeNumber(int to) {
    setState(() {
      numi = to.toString();
    });
  }

  Widget getBody(bool calc) {
    if (calc) {
      return Calc(numi: numi, changeNumber: changeNumber).get();
    } else {
      return const Scaffold(
        body: Center(
            child: Image(
          image: NetworkImage(
              "https://media.tenor.com/JvArM7ZO5JIAAAAM/bavatogay-ricardo-milos.gif"),
          alignment: Alignment.center,
          isAntiAlias: true,
        )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: getBody(isCalc),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            setState(() {
              isCalc = !isCalc;
            })
          },
          tooltip: 'Toggle',
          child: !isCalc ? const Text("Calc") : const Text("Ricardo"),
        ));
  }
}
