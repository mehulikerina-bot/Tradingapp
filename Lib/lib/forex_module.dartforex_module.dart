import 'package:flutter/material.dart';
import 'dart:math';

class ForexModule extends StatefulWidget {
  const ForexModule({super.key});

  @override
  State<ForexModule> createState() => _ForexModuleState();
}

class _ForexModuleState extends State<ForexModule> {
  String pair = "EUR/USD";
  String signal = "Tekan tombol untuk sinyal";
  Random random = Random();

  void generateSignal() {
    List<String> signals = ["BUY", "SELL"];
    List<String> pairs = ["EUR/USD", "GBP/USD", "USD/JPY", "AUD/USD"];

    setState(() {
      pair = pairs[random.nextInt(pairs.length)];
      signal = signals[random.nextInt(signals.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forex Signal")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Pair: $pair",
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            Text(signal,
                style: const TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateSignal,
              child: const Text("Generate Signal"),
            ),
          ],
        ),
      ),
    );
  }
}
