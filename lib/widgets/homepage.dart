// ignore_for_file: unused_local_variable, prefer_const_constructors, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:papswap/widgets/filtered_data.dart';
import 'package:papswap/widgets/postingscreen.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Uri _url = Uri.parse('https://papswap.in');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  String? uid;
  String check = "ok";
  bool fl = false;
  setuseruid() async {
    uid = FirebaseAuth.instance.currentUser!.uid.toString();
  }

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
    // setuseruid();
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            // Text(
            //   'PapSwap',
            //   style: TextStyle(color: Colors.red),
            // ),
            Text('PAP S',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 2.35 * textMultiplier,
                )),
            RotationTransition(
              turns: const AlwaysStoppedAnimation(270 / 360),
              child: Text(
                "W",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 2.12 * textMultiplier,
                ),
              ),
            ),
            Text('AP',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 2.35 * textMultiplier,
                )),
          ],
        ),
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {
              _launchUrl();
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppThemePapswap().freeboxh(1.18 * heightMultiplier),
            Container(
              padding: EdgeInsets.only(
                  bottom: 1.18 * heightMultiplier,
                  top: 1.18 * heightMultiplier),
              // color: Colors.white,
              height: 5.9 * heightMultiplier,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "ok";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   All   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Ministry of Development";
                        });
                      },
                      child: Container(
                        // width: 170,
                        decoration: BoxDecoration(
                            // color: Color.fromARGB(161, 255, 214, 214),
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            '   Ministry of Development   ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 1.645 * textMultiplier),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Ministry of Rural area Development";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   Ministry of Rural area Development   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Ministry of Child Development";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   Ministry of Child Development   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Ministry of Defence";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   Ministry of Defence   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Road and transportation ministry";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   Road and transportation ministry   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Ministry of Educational Development";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   Ministry of Educational Development   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Health Ministry";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   Health Ministry   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.588 * widthMultiplier,
                        vertical: 0.24 * heightMultiplier),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = "Home Ministry";
                        });
                      },
                      child: Container(
                        // width: 70,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(58, 202, 202, 202),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.255 * widthMultiplier,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Text(
                          '   Home Ministry   ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.645 * textMultiplier),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                AppThemePapswap().freeboxw(3.82 * widthMultiplier),
                Text(
                  'trending',
                  style: TextStyle(
                      fontSize: 2.35 * textMultiplier,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            AppThemePapswap().freeboxh(0.94 * heightMultiplier),
            check == 'ok' ? PostingSCreen() : FilteredScreen(catagory: check)
          ],
        ),
      ),
    );
  }
}
