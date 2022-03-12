import 'dart:async';
import 'package:bbva/dashboard_screen.dart';
import 'package:flutter/material.dart';

class PadLockAnimationScreen extends StatefulWidget {
  PadLockAnimationScreen(
      {Key key, this.firstContainerHeight, this.secondContainerHeight})
      : super(key: key);
  double firstContainerHeight;
  double secondContainerHeight;

  @override
  _PadLockAnimationScreenState createState() => _PadLockAnimationScreenState();
}

class _PadLockAnimationScreenState extends State<PadLockAnimationScreen>
    with TickerProviderStateMixin {
  String imagePath = 'assets/images/open-padlock.png';
  bool textToShow = false;
  AnimationController _controller;
double innerHeightAndWidth=70;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        widget.firstContainerHeight = MediaQuery.of(context).size.height / 1.4;
        widget.secondContainerHeight = widget.secondContainerHeight / 3.5;
        textToShow = true;
        _controller.forward();
          moveToNextScreen();
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // add this

        children: [
          AnimatedContainer(
            color: Color(0xff072144),
            height: widget.firstContainerHeight,
            width: double.infinity,
            duration: const Duration(milliseconds: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotationTransition(
                  turns: Tween(begin: 1.2, end: 2.2).animate(_controller),
                  child: Container(
                    height: innerHeightAndWidth,
                    width: innerHeightAndWidth,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white24, width: 0.2),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff0D386F),
                            Color(0xff072144),
                          ]),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            color: Color(0xff0D386F),
            height: widget.secondContainerHeight,
            //height: secondContainerHeight,
            width: double.infinity,
            duration: const Duration(milliseconds: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  height: 35,
                  color: Colors.white,
                ),
                if (textToShow)
                  SizedBox(
                    height: 10,
                  ),
                if (textToShow)
                  Text(
                    'Conectando con BBVA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }

  void moveToNextScreen() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        widget.firstContainerHeight = 0.0;
        widget.secondContainerHeight = MediaQuery.of(context).size.height;
        imagePath = "assets/images/padlock.png";
        textToShow = false;
        innerHeightAndWidth=0.0;
      });
      Timer(Duration(seconds: 1), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DashboardScreen()),
        );
      });
    });
  }
}
