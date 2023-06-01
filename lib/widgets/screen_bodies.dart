import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.blueGrey[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.car_detailed,
              size: 50,
              color: Colors.red,
            ),
            SizedBox(height: screenSize.height / 5),
            const Text(
              'Starting the journey . . .',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class MidScreen extends StatelessWidget {
  const MidScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.bus,
              size: 50,
              color: Colors.green,
            ),
            SizedBox(height: screenSize.height / 5),
            const Text(
              'On the way . . .',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.blueGrey[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.house_alt,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(height: screenSize.height / 5),
            const Text(
              'At home now.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
