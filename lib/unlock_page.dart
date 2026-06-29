import 'package:flutter/material.dart';

class UnlockPage extends StatelessWidget {
  const UnlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unlock block')),
      body: Center(
        child: SizedBox(
          width: 320,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // const TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Block name',
              //   ),
              // ),
              // const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Unlock duration',
                ),
              ),
              const SizedBox(height: 12),
              FilledButton(onPressed: () {}, child: const Text('Unlock block')),
            ],
          ),
        ),
      ),
    );
  }
}
