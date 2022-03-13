import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'list_detail_screen.dart';

class CardDetailsScreen extends StatefulWidget {
  const CardDetailsScreen({Key key}) : super(key: key);

  @override
  _CardDetailsScreenState createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff072144),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.3,
                      ),
                      Text(
                        'Tarjeta',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '.6993',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.settings_power,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Apagar\n Tarjeta',
                            style: TextStyle(
                                color: Color(0xff2579BC),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Comprar con tarjeta\n digital',
                            style: TextStyle(
                                color: Color(0xff2579BC),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.radio,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 200),
                child: Positioned.fill(
                  top: 150,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.white,
                          height: 200,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                '0003AH8182',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      text: '\$ ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontFeatures: [
                                            FontFeature.subscripts()
                                          ],
                                          fontWeight: FontWeight.w500),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '0.00',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 33,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    '.28182',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Disponible',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'Cuenta asociada',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 100,
                                color: Color(0xff237BB9),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/transfer.png',
                                              height: 18,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Control de\ngastos',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/line_card.png',
                                              height: 18,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Bloqueo y\n reposicion',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/menu2.png',
                                              color: Colors.white,
                                              height: 18,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Ver NIP',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.more_horiz_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Mas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.white,
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ULTIMOS MOVIMENTOS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cardList() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListDetailsScreen()),
        );
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
                  Row(
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
