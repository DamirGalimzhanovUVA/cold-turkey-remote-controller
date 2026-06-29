import 'package:flutter/material.dart';

import 'cold_turkey_view_model.dart';

class AddExceptionPage extends StatefulWidget {
  const AddExceptionPage({
    super.key,
    required this.viewModel,
    required this.blockName,
  });

  final ColdTurkeyViewModel viewModel;
  final String blockName;

  @override
  State<AddExceptionPage> createState() => _AddExceptionPageState();
}

class _AddExceptionPageState extends State<AddExceptionPage> {
  final TextEditingController _exceptionController = TextEditingController();

  @override
  void dispose() {
    _exceptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add exception to block')),
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
                controller: _exceptionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Exception URL',
                ),
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () {
                  widget.viewModel.addException(
                    blockName: widget.blockName,
                    exceptionUrl: _exceptionController.text,
                  );
                },
                child: const Text('Add exception'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
