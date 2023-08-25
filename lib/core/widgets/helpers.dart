import 'package:flutter/material.dart';
mixin Helpers {
  void showSnackBar({
    required BuildContext context,
    required String message,
    bool error = false,
  }) {
    body: Center(
        child: ElevatedButton(
        onPressed: () {
      // Show the Snackbar when the button is pressed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: error ? Colors.red : Colors.green,
            duration: const Duration(seconds: 1),
        ),
      );
    },
    child: Text('Show Snackbar'),
    ),
    );
  }
}