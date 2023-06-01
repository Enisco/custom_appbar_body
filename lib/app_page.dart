import 'package:custom_appbar_body/widgets/custom_button.dart';
import 'package:custom_appbar_body/widgets/screen_bodies.dart';
import 'package:flutter/material.dart';

enum Pages {
  startPage,
  midPage,
  endPage,
}

Pages currentPage = Pages.startPage;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 60),
          // child: const CustomAppbar(),
          child: Card(
            child: Container(
              height: 70,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    width: screenSize.width * 0.3,
                    color: Colors.red,
                    child: const Text(
                      'Start',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print('Start pressed');
                      setState(() {
                        currentPage = Pages.startPage;
                      });
                    },
                  ),
                  CustomButton(
                    width: screenSize.width * 0.3,
                    color: Colors.green,
                    child: const Text(
                      'Middle',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print('Mid pressed');
                      setState(() {
                        currentPage = Pages.midPage;
                      });
                    },
                  ),
                  CustomButton(
                    width: screenSize.width * 0.3,
                    color: Colors.blue,
                    child: const Text(
                      'End',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print('End pressed');
                      setState(() {
                        currentPage = Pages.endPage;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: currentPage == Pages.startPage
            ? const StartScreen()
            : currentPage == Pages.midPage
                ? const MidScreen()
                : const EndScreen(),
      ),
    );
  }
}
