import 'package:flutter/material.dart';

import '../config.dart';
import '../widgets.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _ExpensesWidgetView();
  }
}

class _ExpensesWidgetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = context.getHeight();
    var width = context.getWidth();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: height / 14,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: width / 20),
                child: Text(
                  "Monthly Expenses",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: context.getFontSize(20)),
                ),
              ),
              Container(
                width: width / 3.5,
                margin: EdgeInsets.only(right: width / 30),
                child: Row(
                  children: <Widget>[
                    ArrowButtonWidget(
                      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                      icon: Icon(Icons.arrow_back_ios, size: context.getFontSize(17)),
                    ),
                    Padding(padding: EdgeInsets.only(left: width / 50)),
                    ArrowButtonWidget(
                      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                      icon: Icon(Icons.arrow_forward_ios, size: context.getFontSize(17)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        DataProvider.category.map((data) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: ColoursConfig.pieColors[DataProvider.category.indexOf(data)],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(data['name'], style: TextStyle(fontSize: context.getFontSize(16))),
                              ],
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: PieChartWidget(category: DataProvider.category),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
