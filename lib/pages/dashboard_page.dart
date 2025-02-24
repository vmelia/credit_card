import 'package:flutter/material.dart';

import '../config.dart';
import '../widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _DashboardPageView();
  }
}

class _DashboardPageView extends StatelessWidget {
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
              Expanded(child: CreditCardsWidget()),
              Expanded(child: ExpensesWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
