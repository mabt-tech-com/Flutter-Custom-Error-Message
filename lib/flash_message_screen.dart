// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'CustomSnackBarContent.dart';

class FlashMessageScreen extends StatelessWidget {
  const FlashMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                elevation: 0,
                content: CustomSnackBarContent(
                  errorText: "That Email Address is already in use! Please try with a different one.",
                ),
              ),
            );
          },
          child: const Text("Show Message"),
        ),
      ),
    );
  }
}