import 'package:flutter/material.dart';

import '../config.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  const AppBarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: width / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Container(
            height: width / 6,
            width: width / 6,
            decoration: BoxDecoration(
              color: ColoursConfig.primaryWhite,
              boxShadow: ColoursConfig.neumorpShadow,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: ColoursConfig.primaryWhite,
                      boxShadow: ColoursConfig.neumorpShadow,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(child: Icon(Icons.notifications)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
