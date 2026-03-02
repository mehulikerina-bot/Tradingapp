import 'package:flutter/material.dart';

class HistoryModule extends StatelessWidget {
  const HistoryModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Trade History")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ListTile(
            leading: Icon(Icons.arrow_upward, color: Colors.green),
            title: Text("EUR/USD - BUY"),
            subtitle: Text("Profit +8.00"),
          ),
          ListTile(
            leading: Icon(Icons.arrow_downward, color: Colors.red),
            title: Text("GBP/USD - SELL"),
            subtitle: Text("Loss -10.00"),
          ),
        ],
      ),
    );
  }
}
