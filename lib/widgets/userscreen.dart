// ignore_for_file: avoid_print, unused_local_variable, sized_box_for_whitespace, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:papswap/widgets/post_card.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:papswap/widgets/usercard.dart';

class UserSCreen extends StatefulWidget {
  const UserSCreen({super.key});

  @override
  State<UserSCreen> createState() => _UserSCreenState();
}

class _UserSCreenState extends State<UserSCreen> {
  final ScrollController controller = ScrollController();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  List<Map<String, dynamic>> list = [];
  DocumentSnapshot? lastDocument;
  bool isMoredata = true;

  bool isLoading = false;
  String uid = "";
  void pageData() async {
    print('call');
    if (isMoredata) {
      if (mounted) {
        setState(() {
          isLoading = true;
        });
      }
      final collectionReference = _db.collection('feed');

      late QuerySnapshot<Map<String, dynamic>> querySnapshot;
      if (lastDocument == null) {
        try {
          querySnapshot = await collectionReference.limit(3).get();
        } catch (e) {
          print(e);
        }
      } else {
        try {
          querySnapshot = await collectionReference
              .limit(3)
              .startAfterDocument(lastDocument!)
              .get();
        } catch (e) {
          print(e);
        }
      }
      lastDocument = querySnapshot.docs.last;

      list.addAll(querySnapshot.docs.map((e) => e.data()));

      isLoading = false;

      if (querySnapshot.docs.length < 3) {
        isMoredata = false;
      }
      if (mounted) {
        setState(() {});
      }
    } else {
      print('NO more data');
    }
  }

  @override
  void initState() {
    super.initState();
    uid = FirebaseAuth.instance.currentUser!.uid;
    pageData();

    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        pageData();
      }
    });
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
    return Container(
      height: 79.1 * heightMultiplier,
      child: ListView.builder(
        controller: controller,
        itemCount: list.length,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5.1 * widthMultiplier,
                vertical: 0.47004 * heightMultiplier),
            child: Column(
              children: [
                UserCard(
                  snap: list[index],
                  uid: uid,
                  // likedata: likedata,
                ),
                !isMoredata
                    ? AppThemePapswap().freeboxh(0)
                    : AppThemePapswap().freeboxh(10),
              ],
            )),
      ),
    );
  }
}
