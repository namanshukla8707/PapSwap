// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print, unnecessary_brace_in_string_interps, unused_element, unused_local_variable, unused_import, prefer_const_declarations, deprecated_member_use, prefer_typing_uninitialized_variables

import 'dart:convert';
// import 'dart:ffi';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';
import 'package:papswap/widgets/provider.dart';
import 'package:papswap/widgets/swap_reswap.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:papswap/widgets/forgot_password.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class PostingCard extends StatefulWidget {
  final snap;
  final uid;
  final likedata;
  const PostingCard(
      {Key? key, required this.snap, required this.uid, required this.likedata})
      : super(key: key);
  @override
  State<PostingCard> createState() => _PostingCardState();
}

class _PostingCardState extends State<PostingCard> {
  bool isLiked = false;

  void setlikestatus() {
    if (widget.likedata.contains(widget.snap['post_id'].toString().trim())) {
      setState(() {
        isLiked = true;
      });
    }
  }

  bool currentlike = false;
  String likedata = '';

  Future<void> checklikestatus() async {
    print('called');
    try {
      final result = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.uid.toString().trim())
          .collection('flames')
          .where('post_Id', isEqualTo: widget.snap['post_id'].toString().trim())
          .get();
      if (mounted) {
        if (result.docs.map((e) => e.id).isNotEmpty) {
          setState(() {
            currentlike = true;
            likedata = result.docs.map((e) => e.id.toString()).first.toString();
          });
        }
      }
    } catch (e) {
      print(e);
    }
    if (currentlike) {
      if (isLiked) {
        setState(() {
          isLiked = false;
          widget.likedata.remove(widget.snap['post_id'].toString().trim());
          widget.snap['like'] = widget.snap['like'] - 1;
        });
      }
    } else {
      if (!isLiked) {
        setState(() {
          isLiked = true;
          widget.likedata.add(widget.snap['post_id'].toString().trim());
          widget.snap['like'] = widget.snap['like'] + 1;
        });
      }
    }
    likeprocess();
  }

  Future<void> likeprocess() async {
    if (currentlike) {
      if (likedata.isNotEmpty) {
        try {
          await FirebaseFirestore.instance
              .collection('users')
              .doc(widget.uid)
              .collection('flames')
              .doc(likedata.toString().trim())
              .delete();
          await FirebaseFirestore.instance
              .collection('posts')
              .doc(widget.snap['post_id'].toString().trim())
              .update({
            'like': widget.snap['like'],
          });
        } catch (e) {
          print(e);
        }
      }
    } else {
      try {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(widget.uid)
            .collection('flames')
            .doc()
            .set({
          'post_Id': widget.snap['post_id'].toString().trim(),
          'flamedAt': DateTime.now(),
          'post_img': widget.snap['image'],
          'post_text': 'this is good',
        });
        await FirebaseFirestore.instance
            .collection('posts')
            .doc(widget.snap['post_id'].toString().trim())
            .update({
          'like': widget.snap['like'],
        });
      } catch (e) {
        print(e);
      }
    }
    setState(() {
      currentlike = !currentlike;
    });
  }

  final imageurl =
      'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=';
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
    setlikestatus();
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // color: Colors.red,
      child: Container(
        width: 95.821 * widthMultiplier,
        padding: EdgeInsets.symmetric(horizontal: 5.1 * widthMultiplier),
        // height: 57.12 * heightMultiplier,
        decoration: BoxDecoration(
          // color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppThemePapswap().freeboxh(2.35 * heightMultiplier),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppThemePapswap().freeboxw(2.55 * widthMultiplier),
                Container(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      AppThemePapswap().freeboxh(1.18 * heightMultiplier),
                      Container(
                        height: 3.53 * heightMultiplier,
                        width: 7.64 * widthMultiplier,
                        child: Image.asset('assets/finallogo.PNG'),
                      ),
                    ],
                  ),
                ),
                AppThemePapswap().freeboxw(5.1 * widthMultiplier),
                Container(
                  padding: EdgeInsets.all(0),
                  // color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('PapSwap_official',
                          style: TextStyle(
                              fontSize: 2.35 * textMultiplier,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold)),
                      AppThemePapswap().freeboxh(0.71 * heightMultiplier),
                      Text('2w ago'),
                    ],
                  ),
                ),
                AppThemePapswap().freeboxw(10.2 * widthMultiplier),
                Container(
                  padding: EdgeInsets.all(0),
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppThemePapswap().freeboxh(0.352 * heightMultiplier),
                      // IconButton(
                      //     padding: EdgeInsets.all(0),
                      //     alignment: Alignment.topRight,
                      //     onPressed: () {
                      //       showModalBottomSheet(
                      //           elevation: 20,
                      //           enableDrag: true,
                      //           isScrollControlled: true,
                      //           isDismissible: true,
                      //           shape: const RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.only(
                      //                   topLeft: Radius.circular(15),
                      //                   topRight: Radius.circular(15))),
                      //           backgroundColor: Colors.white,
                      //           context: context,
                      //           builder: (context) {
                      //             return SingleChildScrollView(
                      //               child: Column(
                      //                 mainAxisSize: MainAxisSize.min,
                      //                 children: [
                      //                   AppThemePapswap()
                      //                       .freeboxh(0.59 * heightMultiplier),
                      //                   Container(
                      //                     height: 0.71 * heightMultiplier,
                      //                     width: 10.186 * widthMultiplier,
                      //                     decoration: BoxDecoration(
                      //                       // fontSize: 100,
                      //                       color: Colors.grey,
                      //                       borderRadius:
                      //                           BorderRadius.circular(10),
                      //                     ),
                      //                   ),
                      //                   AppThemePapswap()
                      //                       .freeboxh(2.94 * heightMultiplier),
                      //                   Row(
                      //                     mainAxisAlignment:
                      //                         MainAxisAlignment.start,
                      //                     crossAxisAlignment:
                      //                         CrossAxisAlignment.start,
                      //                     children: [
                      //                       AppThemePapswap().freeboxw(
                      //                           6.12 * widthMultiplier),
                      //                       Icon(
                      //                         Icons.report_gmailerrorred,
                      //                         color: Colors.red,
                      //                       ),
                      //                       AppThemePapswap().freeboxw(
                      //                           6.12 * widthMultiplier),
                      //                       Text(
                      //                         'Report Post',
                      //                         style: TextStyle(
                      //                             fontSize:
                      //                                 2.12 * textMultiplier,
                      //                             fontWeight: FontWeight.w400),
                      //                       ),
                      //                     ],
                      //                   ),
                      //                   AppThemePapswap()
                      //                       .freeboxh(4.7 * heightMultiplier),
                      //                 ],
                      //               ),
                      //             );
                      //           });
                      //     },
                      //     icon: Icon(
                      //       Icons.more_horiz,
                      //       color: Colors.grey,
                      //     )),
                    ],
                  ),
                )
              ],
            ),
            AppThemePapswap().freeboxh(0.94 * heightMultiplier),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppThemePapswap().freeboxw(.51 * widthMultiplier),
                // Expanded(
                //   child: FittedBox(
                // child:
                Expanded(
                  child: Text(
                    widget.snap['catagory'],
                    // result[index].fields.username.stringValue,
                    style: TextStyle(fontSize: 1.88 * textMultiplier),
                  ),
                ),
                // ),
                // ),
              ],
            ),
            AppThemePapswap().freeboxh(1.6451 * textMultiplier),
            // Text(result[index].name),
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(0),
              // height: 35.3 * heightMultiplier,
              width: 76.4 * widthMultiplier,
              child: Image.network(
                widget.snap['image'],
                fit: BoxFit.fill,
              ),
            ),
            AppThemePapswap().freeboxh(1.88 * heightMultiplier),
            Container(
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      IconButton(
                        constraints:
                            BoxConstraints(minHeight: .588 * heightMultiplier),
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.bottomLeft,
                        onPressed: () async {
                          await checklikestatus();
                          // await likeprocess();
                        },
                        icon: !isLiked
                            ? Icon(
                                Icons.local_fire_department_sharp,
                                color: Color.fromARGB(255, 101, 101, 101),
                              )
                            : Icon(
                                Icons.local_fire_department_sharp,
                                color: Color.fromARGB(255, 255, 5, 5),
                              ),
                      ),
                      AppThemePapswap().freeboxh(0.12 * heightMultiplier),
                      Container(
                        // color: Colors.green,
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          widget.snap['like'].toString(),
                          // snap['naman'],
                          style: TextStyle(fontSize: 1.41011 * textMultiplier),
                        ),
                        //   ],
                        // ),
                      ),
                    ],
                  ),
                  AppThemePapswap().freeboxw(5.093 * widthMultiplier),
                  Column(
                    children: [
                      IconButton(
                        padding: EdgeInsets.all(0),
                        constraints:
                            BoxConstraints(minHeight: 0.588 * heightMultiplier),
                        alignment: Alignment.topLeft,
                        onPressed: () {
                          showModalBottomSheet(
                            elevation: 10,
                            enableDrag: true,
                            isDismissible: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            context: context,
                            builder: (context) => ReSwap(
                              snap: widget.snap,
                              uid: widget.uid,
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.swap_horiz,
                          color: Color.fromARGB(255, 101, 101, 101),
                        ),
                      ),
                      AppThemePapswap().freeboxh(0.12 * heightMultiplier),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '111',
                          style: TextStyle(fontSize: 1.41011 * textMultiplier),
                        ),
                      ),
                    ],
                  ),
                  AppThemePapswap().freeboxw(4.584 * widthMultiplier),
                  AppThemePapswap().freeboxw(48.781 * widthMultiplier),
                  Expanded(
                    child: Container(
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        constraints:
                            BoxConstraints(minHeight: 0.588 * heightMultiplier),
                        alignment: Alignment.bottomLeft,
                        onPressed: () async {
                          final uri = Uri.parse(widget.snap['image']);
                          final res = await http.get(uri);
                          final bytes = res.bodyBytes;

                          final temp = await getTemporaryDirectory();
                          final path = '${temp.path}/image.jpg';
                          File(path).writeAsBytesSync(bytes);

                          await Share.shareFiles([path],
                              text:
                                  'See the latest pilocies by Goverment and Share your Opinion');
                        },
                        icon: Icon(
                          Icons.share,
                          color: Color.fromARGB(255, 101, 101, 101),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // AppThemePapswap().freeboxh(0.12 * heightMultiplier),
            // Container(
            //   // color: Colors.red,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       AppThemePapswap().freeboxw(1.02 * widthMultiplier),
            //       // Container(
            //       //   // color: Colors.green,

            //       //   alignment: Alignment.bottomLeft,
            //       //   child: Text(
            //       //     widget.snap['like'].toString(),
            //       //     // snap['naman'],
            //       //     style: TextStyle(fontSize: 1.41011 * textMultiplier),
            //       //   ),
            //       //   //   ],
            //       //   // ),
            //       // ),
            //       AppThemePapswap().freeboxw(5.093 * widthMultiplier),
            //       Container(
            //         alignment: Alignment.bottomLeft,
            //         child: Text(
            //           '111',
            //           style: TextStyle(fontSize: 1.41011 * textMultiplier),
            //         ),
            //       ),
            //       AppThemePapswap().freeboxw(5.093 * widthMultiplier),
            //     ],
            //   ),
            // ),
            AppThemePapswap().freeboxh(1.6452 * heightMultiplier),
          ],
        ),
      ),
    );
  }
}
