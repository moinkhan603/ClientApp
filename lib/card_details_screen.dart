import 'package:flutter/material.dart';

class CardDetailsScreen extends StatefulWidget {
  const CardDetailsScreen({Key key}) : super(key: key);

  @override
  _CardDetailsScreenState createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff072144),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tarjeta',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '.6993',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(children: [
            // Icon(Icons.turn)
          ],)
        ],
      ),
    );
  }
}
