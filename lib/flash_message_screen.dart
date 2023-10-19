// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'CustomSnackBarContent_Error.dart';
import 'CustomSnackBarContent_Success.dart';
import 'CustomSnackBarContent_Warning.dart';

class FlashMessageScreen extends StatelessWidget {
  const FlashMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 40),


            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    content: CustomSnackBarContentError(
                      errorText:
                          "That Email Address is already in use! Please try with a different one.",
                    ),
                  ),
                );
              },
              child: const Text("Show Error Message"),
            ),


            const SizedBox(height: 10),


            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    content: CustomSnackBarContentSuccess(
                      errorText:
                          "That Email Address is already in use! Please try with a different one.",
                    ),
                  ),
                );
              },
              child: const Text("Show Success Message"),
            ),


            const SizedBox(height: 10),


            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    content: CustomSnackBarContentWarning(
                      errorText:
                          "That Email Address is already in use! Please try with a different one.",
                    ),
                  ),
                );
              },
              child: const Text("Show Warning Message"),
            ),

            const SizedBox(height: 10),


          ],
        ),
      ),
    );
  }
}
