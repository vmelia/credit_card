import 'package:flutter/material.dart';

import '../config.dart';

class CardWidget extends StatelessWidget {
  final String lastFourDigits;
  final String cardType;
  const CardWidget({super.key, required this.lastFourDigits, required this.cardType});

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 20, vertical: height / 20),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.topLeft,
              width: width / 1.8,
              child: Image.asset("assets/mastercardlogo.png", fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: height / 10,
              width: width / 1.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("**** **** **** ", style: TextStyle(fontSize: fontSize(20), fontWeight: FontWeight.w500)),
                      Text(lastFourDigits, style: TextStyle(fontSize: fontSize(30), fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Text(
                    cardType,
                    style: TextStyle(fontSize: fontSize(15), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              alignment: Alignment.bottomRight,
              width: width / 6,
              height: height / 16,
              decoration: BoxDecoration(
                color: ColoursConfig.primaryWhite,
                boxShadow: ColoursConfig.neumorpShadow,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
