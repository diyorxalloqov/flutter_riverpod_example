import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/riverpod/counter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(counterRiverpod).count.toString()),
            ElevatedButton(
                onPressed: () {
                  ref.read(counterRiverpod).incrementCounter();
                },
                child: Icon(Icons.add)),
            ElevatedButton(
                onPressed: () {
                  ref.read(counterRiverpod).decrementCounter();
                },
                child: Text('--')),
          ],
        ),
      ),
    );
  }
}
