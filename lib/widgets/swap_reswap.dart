// ignore_for_file: prefer_const_literals_to_create_immutables, unused_import, prefer_const_constructors, prefer_typing_uninitialized_variables, unused_local_variable

// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:papswap/widgets/reswap_screen.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:http/http.dart' as http;

class ReSwap extends StatefulWidget {
  final snap;
  final uid;
  const ReSwap({
    Key? key,
    required this.snap,
    required this.uid,
  }) : super(key: key);

  @override
  State<ReSwap> createState() => _ReSwapState();
}

class _ReSwapState extends State<ReSwap> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final screenHeight = height;
    final screenWidth = width;
    final blockWidth = screenWidth / 100;
    final blockHeight = screenHeight / 100;
    final textMultiplier = blockHeight;
    final imageSizeMultiplier = blockWidth;
    final heightMultiplier = blockHeight;
    final widthMultiplier = blockWidth;
    // print(78);
    // print(widget.link);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppThemePapswap().freeboxh(1.18 * heightMultiplier),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppThemePapswap().freeboxw(180),
            Container(
              height: .71 * heightMultiplier,
              width: 10.19 * widthMultiplier,
              decoration: BoxDecoration(
                color: Color.fromARGB(231, 186, 183, 183),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            AppThemePapswap().freeboxh(3.06 * heightMultiplier),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ReSwapScreen(
                  link: widget.snap['image'],
                  category: widget.snap['catagory'],
                  postid: widget.snap['post_id'],
                  posttext: widget.snap['feedtext'],
                  reswps: widget.snap['reswaps'],
                  uid: widget.uid,
                ),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppThemePapswap().freeboxw(5.602241 * widthMultiplier),
              Icon(
                Icons.swap_horiz,
                size: 30,
                color: Color.fromARGB(255, 100, 99, 99),
              ),
              AppThemePapswap().freeboxw(4.584 * widthMultiplier),
              Column(
                children: [
                  AppThemePapswap().freeboxh(0.47 * heightMultiplier),
                  Text(
                    'Reswap',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 49, 49, 49),
                        fontSize: 2.12 * textMultiplier,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              // AppThemePapswap().freeboxh(20),
            ],
          ),
        ),
        AppThemePapswap().freeboxh(24),
      ],
    );
  }
}
