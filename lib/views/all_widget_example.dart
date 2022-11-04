import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class AllWidgetExample extends StatelessWidget {
  const AllWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Widget Example"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show SnackBar'),
          // On pressing the raised button
          onPressed: () {
            // Show a snackbar with a message
            showMessage(context, 'Login Successful');
          },
        ),
      ),
    );
  }
}
