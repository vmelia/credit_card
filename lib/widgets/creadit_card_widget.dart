import 'package:flutter/material.dart';

import '../config.dart';
import '../widgets.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _CreditCardWidgetView();
  }
}

class _CreditCardWidgetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: width / 20),
          alignment: Alignment.centerLeft,
          child: Text("Card Selected", style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize(20))),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: width,
                decoration: BoxDecoration(
                  boxShadow: ColoursConfig.neumorpShadow,
                  color: ColoursConfig.primaryWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(horizontal: width / 25, vertical: height / 30),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      top: 150,
                      bottom: -200,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue[900]!.withValues(alpha: ColoursConfig.alpha),
                              blurRadius: 50,
                              spreadRadius: 2,
                              offset: Offset(20, 0),
                            ),
                            BoxShadow(color: Colors.white12, blurRadius: 0, spreadRadius: -2, offset: Offset(0, 0)),
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white30,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: -100,
                      bottom: -100,
                      left: -300,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue[900]!.withValues(alpha: ColoursConfig.alpha),
                              blurRadius: 50,
                              spreadRadius: 2,
                              offset: Offset(20, 0),
                            ),
                            BoxShadow(color: Colors.white12, blurRadius: 0, spreadRadius: -2, offset: Offset(0, 0)),
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white30,
                        ),
                      ),
                    ),
                    CardWidget(lastFourDigits: '5678', cardType: 'Platinum Card'),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
