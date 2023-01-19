// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, unused_import

// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:papswap/question_page.dart';
import 'package:papswap/widgets/postingscreen.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:papswap/widgets/userpostingScreen.dart';
import 'package:papswap/widgets/userscreen.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  String? username;

  String? image;
  @override
  void initState() {
    super.initState();
    username = FirebaseAuth.instance.currentUser!.displayName;
    image = FirebaseAuth.instance.currentUser!.photoURL;
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          username ??= "";
          image ??= "";
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => UserPostScreen(
                username: username,
                userimage: image,
              ),
            ),
          );
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                floating: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Row(
                  children: [
                    Text(
                      'PAP S',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 2.35 * textMultiplier,
                      ),
                    ),
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
                    Text(
                      'AP',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 2.35 * textMultiplier,
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 1.18 * heightMultiplier,
                        top: 1.18 * heightMultiplier,
                        left: 4,
                        right: 4,
                      ),
                      // color: Colors.white,
                      height: 10.9 * heightMultiplier,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            // scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.588 * widthMultiplier,
                                    vertical: 0.24 * heightMultiplier),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => QuestionPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // width: 70,
                                    padding: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(57, 107, 106, 106),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 0.255 * widthMultiplier,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          // AppThemePapswap().freeboxw(10),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 6.0,
                                                bottom: 6.0,
                                                left: 10),
                                            child: Container(
                                              // decoration: BoxDecoration(
                                              //   borderRadius:
                                              //       BorderRadius.circular(10),
                                              // ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.asset(
                                                    'assets/download1.png'),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '   MEITY Startup Hub    ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize:
                                                    1.645 * textMultiplier),
                                          ),
                                        ],
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
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => QuestionPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // width: 70,
                                    padding: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(57, 107, 106, 106),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 0.255 * widthMultiplier,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                        child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 6.0, bottom: 6.0, left: 6),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              child: Image.asset(
                                                  'assets/download.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '   StartInUp    ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 1.645 * textMultiplier),
                                        ),
                                      ],
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
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => QuestionPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // width: 70,
                                    padding: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(57, 107, 106, 106),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 0.255 * widthMultiplier,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 6.0, bottom: 6.0, left: 6),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                child: Image.asset(
                                                    'assets/BCCI_logo.png'),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '   BCCI    ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize:
                                                    1.645 * textMultiplier),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    UserSCreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
