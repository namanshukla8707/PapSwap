// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomProgressIndicator extends StatelessWidget {
  final Color color;
  final double? value;
  const CustomProgressIndicator(
      {Key? key, this.color = Colors.white, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      // backgroundColor: Colors.white,
      color: Colors.white,
    );
  }
}
