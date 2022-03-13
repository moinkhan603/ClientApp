import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'detail_screen.dart';

class ListDetailsScreen extends StatefulWidget {
  @override
  _ListDetailsScreenState createState() => _ListDetailsScreenState();
}

class _ListDetailsScreenState extends State<ListDetailsScreen> {
  bool shimmerEnabled = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        shimmerEnabled = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff072144),
        title: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Text(
                'Movimentos',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
            ),
            Image.asset(
              'assets/images/help.png',
              height: 18,
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Color(0xffD2ECFC),
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.clear,
                      color: Color(0xff062144),
                    ),
                  ],
                ),
                Icon(
                  Icons.info,
                  color: Color(0xff5CBFFA),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tienes 90 dias para reportar un movimento no reconocido, a partir de su fecha de compra.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, i) {
                return cardList();
              },
              // separatorBuilder: (BuildContext context, int index) {
              //   return Divider(
              //     thickness: 0.2,
              //     color: Colors.grey,
              //   );
              // },
            ),
          )
        ],
      ),
    );
  }

  Widget cardList() {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ListDetailsScreen()),
        // );
      },
      child: shimmerEnabled
          ? Container(
              width: double.infinity,
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300],
                    highlightColor: Colors.white.withOpacity(0.2),
                    child: Text(
                      '19 de enero',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300],
                    highlightColor: Colors.white.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Deposito efectivo practic',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff237BB9),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        RichText(
                          text: TextSpan(
                            text: '\$ ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontFeatures: [FontFeature.subscripts()],
                                fontWeight: FontWeight.w500),
                            children: <TextSpan>[
                              TextSpan(
                                text: '400.00',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300],
                    highlightColor: Colors.white.withOpacity(0.2),
                    child: Text(
                      'Movimento BBVA',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Divider(),
                ],
              ))
          : Container(
              width: double.infinity,
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '19 de enero',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Deposito efectivo practic',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff237BB9),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        RichText(
                          text: TextSpan(
                            text: '\$ ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontFeatures: [FontFeature.subscripts()],
                                fontWeight: FontWeight.w500),
                            children: <TextSpan>[
                              TextSpan(
                                text: '400.00',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Movimento BBVA',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Divider(),
                ],
              )),
    );
  }
}
