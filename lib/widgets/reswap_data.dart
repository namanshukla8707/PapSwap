// ignore_for_file: avoid_print, unused_import

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

Future<void> reswapData({
  required String filepath,
  required String text,
  required String image,
  required String category,
  required String posttext,
  required int reswaps,
  required String uid,
  required String postId,
}) async {
  print(postId);
  print('i am created');
  String uploadedId = '';
  final ref = FirebaseFirestore.instance
      .collection('posts')
      .doc(postId.toString().trim())
      .collection('comments')
      .doc();
  String genid = ref.id;
  print(filepath);
  print(genid);
  if (filepath != '') {
    try {
      var storage = FirebaseStorage.instance.ref().child('reswaps/$genid');
      var upload = storage.putFile(File(filepath));
      upload.whenComplete(() async {
        uploadedId = await storage.getDownloadURL();
        print(uploadedId);
        try {
          await ref.set({
            'reswapImg': uploadedId,
            'comment_Id': genid,
            'reswaped_text': text,
            'reswapedAt': DateTime.now(),
            'post_text': posttext,
            'post_Img': image,
            'catagory': category,
            'postId': postId
          });
        } catch (e) {
          print(e);
        }
        try {
          await FirebaseFirestore.instance
              .collection('users')
              .doc(uid)
              .collection('reswaps')
              .doc()
              .set({
            'reswapImg': uploadedId,
            'comment_Id': genid,
            'reswaped_text': text,
            'reswapedAt': DateTime.now(),
            'post_text': posttext,
            'post_Img': image,
            'catagory': category,
            'postId': postId
          });
        } catch (e) {
          print(e);
        }
      });
    } catch (e) {
      print(e);
    }
  } else {
    try {
      await ref.set({
        'reswapImg': uploadedId,
        'comment_Id': genid,
        'reswaped_text': text,
        'reswapedAt': DateTime.now(),
        'post_text': posttext,
        'post_Img': image,
        'catagory': category,
        'postId': postId
      });
    } catch (e) {
      print(e);
    }
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .collection('reswaps')
          .doc()
          .set({
        'reswapImg': uploadedId,
        'comment_Id': genid,
        'reswaped_text': text,
        'reswapedAt': DateTime.now(),
        'post_text': posttext,
        'post_Img': image,
        'catagory': category,
        'postId': postId
      });
    } catch (e) {
      print(e);
    }
  }
}
