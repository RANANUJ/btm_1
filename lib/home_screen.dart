import 'package:flutter/material.dart';

class BtmNav1 extends StatefulWidget {
  const BtmNav1({super.key});

  @override
  State<BtmNav1> createState() => _BtmNav1();
}

class _BtmNav1 extends State<BtmNav1> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(color: Color.fromARGB(255, 21, 33, 78)),
          title: Text(_currentIndex == 0
              ? "FIRST SCREEN"
              : _currentIndex == 1
                  ? "SECOND SCREEN"
                  : "THIRD SCREEN"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: _currentIndex == 0
                    ? const Color.fromARGB(255, 232, 214, 152)
                    : _currentIndex == 1
                        ? const Color.fromARGB(255, 156, 203, 242)
                        : Color.fromARGB(255, 183, 138, 197),
              ),
            ),
            Row(children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  _currentIndex = 0;
                  setState(() {});
                },
                child: Container(
                    color: _currentIndex == 0
                        ? const Color.fromARGB(255, 98, 95, 95)
                        : const Color.fromARGB(255, 236, 234, 234),
                    child: Column(children: [
                      Text(
                        "Home",
                        style: TextStyle(
                            color: _currentIndex == 0
                                ? Colors.white
                                : Colors.black),
                      ),
                      Icon(Icons.home)
                    ])),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  _currentIndex = 1;
                  setState(() {});
                },
                child: Container(
                    color: _currentIndex == 1
                        ? const Color.fromARGB(255, 98, 95, 95)
                        : const Color.fromARGB(255, 236, 234, 234),
                    child: Column(children: [
                      Text(
                        "search",
                        style: TextStyle(
                            color: _currentIndex == 1
                                ? Colors.white
                                : Colors.black),
                      ),
                      Icon(Icons.search)
                    ])),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  _currentIndex = 2;
                  setState(() {});
                },
                child: Container(
                    color: _currentIndex == 2
                        ? const Color.fromARGB(255, 98, 95, 95)
                        : const Color.fromARGB(255, 236, 234, 234),
                    child: Column(children: [
                      Text(
                        "setting",
                        style: TextStyle(
                            color: _currentIndex == 2
                                ? Colors.white
                                : Colors.black),
                      ),
                      Icon(Icons.settings)
                    ])),
              )),
            ])
          ],
        ));
  }
}
