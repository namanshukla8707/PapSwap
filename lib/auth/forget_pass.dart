// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

Future<void> disp(BuildContext context) async {
  final formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  String email = 'bfncbv';
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('forget password'),
        content: Form(
          key: formkey,
          child: TextFormField(
            controller: emailcontroller,
            
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('cancel')),
          TextButton(
              onPressed: () {
                print(emailcontroller.text);
              },
              child: const Text('forget')),
        ],
      );
    },
  );
}
