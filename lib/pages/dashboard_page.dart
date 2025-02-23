import 'package:flutter/material.dart';

import '../config.dart';
import '../widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);

    return Scaffold(
      body: Container(
        color: ColoursConfig.primaryWhite,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: height / 8, child: AppBarWidget(text: "Vince's Account")),
              Expanded(child: CreditCardWidget()),
              Expanded(child: ExpensesWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
