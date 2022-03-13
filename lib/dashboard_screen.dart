import 'dart:ui';

import 'package:bbva/card_details_screen.dart';
import 'package:flutter/material.dart';

import 'clipper.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool firstView = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          setState(() {
            firstView = true;
          });
          return;
        },
        child: Scaffold(
          backgroundColor: const Color(0xffF3F3F3),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/home.png',
                  color: Colors.black.withOpacity(0.62),
                  height: 16,
                ),
                Image.asset(
                  'assets/images/heart.png',
                  height: 16,
                ),
                Image.asset(
                  'assets/images/circle_plus.png',
                  height: 16,
                ),
                Image.asset(
                  'assets/images/mail.png',
                  height: 12,
                ),
                Image.asset(
                  'assets/images/person.png',
                  height: 16,
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipPath(
                      clipper: ClippingClass(),
                      child: Container(
                        height: 1300,
                        color: Color(0xff1971B8),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 20),
                              child: Stack(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Hola ,Oscar',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        'assets/images/help.png',
                                        height: 18,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/menu.png',
                                        height: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      'Transferier',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/plus.png',
                                      height: 18,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Opportunitodies',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/dollar.png',
                                      height: 18,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Retiro\nSin tarteja',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
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
                                      'mas',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned.fill(
                top: 150,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(12),
                          color: Colors.white,
                          // height: 170,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mis Ceuntas'.toUpperCase(),
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '003a8128',
                                        style: TextStyle(
                                            color: Color(0xff1971B8),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/pocket.png',
                                        height: 13,
                                        color: Color(0xff1971B8),
                                      )
                                    ],
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: '\$ ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '3230',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextSpan(
                                          text: '00',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontFeatures: [
                                                FontFeature.superscripts()
                                              ],
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '. 2121',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                    'Saldo Disponible',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '003a8128',
                                        style: TextStyle(
                                            color: Color(0xff1971B8),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/pocket.png',
                                        height: 13,
                                        color: Color(0xff1971B8),
                                      )
                                    ],
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: '\$ ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '32320',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextSpan(
                                          text: '00',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontFeatures: [
                                                FontFeature.superscripts()
                                              ],
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '. 2121',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                    'Saldo Disponible',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.white,
                          height: 130,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(13),
                                height: 130,
                                width: 80,
                                color: Color(0xff1971B8),
                                child: Image.asset(
                                  'assets/images/master_card.png',
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.clear,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Cambia tu nomina a BBVA sin ir a una sucursa',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Accrss a nevous beneficious',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'iME interesa!',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        if (firstView)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(12),
                            color: Colors.white,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mis Tartejas'.toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        firstView = false;
                                      });
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Vive BBVA',
                                              style: TextStyle(
                                                  color: Color(0xff1971B8),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(Icons.phone_android_outlined),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/images/card.png',
                                              height: 25,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                RichText(
                                                  text: const TextSpan(
                                                    text: '\$ ',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 17,
                                                        fontFeatures: [
                                                          FontFeature
                                                              .subscripts()
                                                        ],
                                                        fontWeight: FontWeight.normal),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '3,998',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.normal
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' 03',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 15,
                                                            fontFeatures: [
                                                              FontFeature
                                                                  .superscripts()
                                                            ],
                                                            fontWeight: FontWeight.normal),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  'Saldo Utilizado',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '. 2121',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontStyle: FontStyle.italic),
                                        ),
                                        Divider(),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vive BBVA',
                                      style: TextStyle(
                                          color: Color(0xff1971B8),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.phone_android_outlined),

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/card.png',
                                      height: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            text: '\$ ',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 17,
                                                fontFeatures: [
                                                  FontFeature
                                                      .subscripts()
                                                ],
                                                fontWeight: FontWeight.normal),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '3,998',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.normal
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' 03',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15,
                                                    fontFeatures: [
                                                      FontFeature
                                                          .superscripts()
                                                    ],
                                                    fontWeight: FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          'Saldo Utilizado',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  '. 2121',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                          ),
                        if (!firstView) secondViewContainer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }

  Container secondViewContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(12),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mis Tartejas'.toUpperCase(),
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '001ah901',
            style: TextStyle(
                color: Color(0xff1971B8), fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardDetailsScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/card.png',
                  height: 25,
                ),
                Icon(Icons.phone_android_outlined)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '. 2998',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
