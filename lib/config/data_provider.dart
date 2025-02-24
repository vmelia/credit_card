class DataProvider {
  static List category = [
    {"name": "Groceries", "amount": 500.0},
    {"name": "Online Shopping", "amount": 100.0},
    {"name": "Eating Out", "amount": 80.0},
    {"name": "Bills", "amount": 50.0},
    {"name": "Subscriptions", "amount": 100.0},
    {"name": "Fees", "amount": 30.0},
  ];

  static double get total{
    double total = 0;
    for (var e in category) {
      total += e['amount'];
    }
    return total;
  }
}
