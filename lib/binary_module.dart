import 'package:flutter/material.dart';
import 'dart:math';

class BinaryModule extends StatefulWidget {
  const BinaryModule({super.key});

  @override
  State<BinaryModule> createState() => _BinaryModuleState();
}

class _BinaryModuleState extends State<BinaryModule> {
  String signal = "Tekan tombol untuk dapat sinyal";
  double balance = 1000;
  double stake = 10;
  Random random = Random();

  void generateSignal() {
    List<String> signals = ["CALL", "PUT"];
    setState(() {
      signal = signals[random.nextInt(signals.length)];
    });
  }

  void simulateTrade(bool win) {
    setState(() {
      if (win) {
        balance += stake * 0.8;
      } else {
        balance -= stake;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Binary Signal")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Balance: \$${balance.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text(signal,
                style: const TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateSignal,
              child: const Text("Generate Signal"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => simulateTrade(true),
                  child: const Text("Win"),
                ),
                ElevatedButton(
                  onPressed: () => simulateTrade(false),
                  child: const Text("Lose"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
