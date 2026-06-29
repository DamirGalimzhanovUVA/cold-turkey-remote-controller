import 'package:flutter/material.dart';

import 'cold_turkey_view_model.dart';

class UnlockPage extends StatefulWidget {
  const UnlockPage({
    super.key,
    required this.viewModel,
    required this.blockName,
  });

  final ColdTurkeyViewModel viewModel;
  final String blockName;

  @override
  State<UnlockPage> createState() => _UnlockPageState();
}

class _UnlockPageState extends State<UnlockPage> {
  final TextEditingController _unlockDurationController =
      TextEditingController();

  @override
  void dispose() {
    _unlockDurationController.dispose();
    super.dispose();
  }

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
              TextField(
                controller: _unlockDurationController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Unlock duration',
                ),
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () {
                  widget.viewModel.unlockBlock(
                    blockName: widget.blockName,
                    unlockDuration: _unlockDurationController.text,
                  );
                },
                child: const Text('Unlock block'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
