import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff072144),
        title: Text(
          'Detalle de movimento',
          style: TextStyle(color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Color(0xffF1F3F1),
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Spei recibidohscbc',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: const TextSpan(
                    text: '\$ ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFeatures: [FontFeature.subscripts()],
                        fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: '46,400',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 26,
                        ),
                      ),
                      TextSpan(
                        text: '00',
                        style: TextStyle(
                          color: Colors.black,
                          fontFeatures: [FontFeature.superscripts()],
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '23 febrerro 2022, 13:15:00 h',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.share,
            color: Colors.blue,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Compartv\ncomprobante',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, i) {
                return   Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre dei beneficiar io',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Hector Audaric',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10,),


                      Text(
                        'Importe',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '\$46,400.00',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 10,),
                      Text(
                        'Banco Destino',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'BBVA Mexico'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),


                      SizedBox(height: 10,),
                      Text(
                        'Fecha de operacian',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23 febrero 2022, 13:25:44 h ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),

                      Divider(),
                    ],),
                );
              },
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
      child: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
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
