import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_ui/provider/increment_provider.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<IncrementProvider>(context, listen: true);
    // final provider1 = context.watch<IncrementProvider>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<IncrementProvider>(
              builder: (context, incrementProvider, child) =>
                  Text("${incrementProvider.counter}"),
            ),
            ElevatedButton(
              onPressed: () {
                provider.increment();
              },
              child: const Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}
