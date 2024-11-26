import 'package:flutter/material.dart';

void main() {
  runApp(const counterApp());
}

// ignore: camel_case_types
class counterApp extends StatelessWidget {
  const counterApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      title: 'CounterAPP',
      home: counter(),
    );
  }
}

// ignore: camel_case_types
class counter extends StatefulWidget {
  const counter({super.key});
  @override
  State<counter> createState() {
    return _counter();
  }
}

// ignore: camel_case_types
class _counter extends State<counter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 7, 133, 236),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Conter Value',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '$count',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: reset,
              child: const Text(
                'Reset Counter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
