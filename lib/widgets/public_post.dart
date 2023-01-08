// ignore_for_file: avoid_print, unused_import

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

Future<void> publicPost({
  required String filepath,
  required String text,
  required String userimage,
  required String username,
}) async {
  String uploadedId = '';
  final ref = FirebaseFirestore.instance.collection('feed').doc();
  String genid = ref.id;
  print(filepath);
  print(genid);
  if (filepath != '') {
    try {
      var storage = FirebaseStorage.instance.ref().child('public/$genid');
      var upload = storage.putFile(File(filepath));
      upload.whenComplete(() async {
        uploadedId = await storage.getDownloadURL();
        print(uploadedId);
        try {
          await ref.set({
            'image': uploadedId,
            'post_Id': genid,
            'opinion': text,
            'posted_at': DateTime.now(),
            'posted_by': username,
            'user_image': userimage,
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
        'image': uploadedId,
        'post_Id': genid,
        'opinion': text,
        'posted_at': DateTime.now(),
        'posted_by': username,
        'user_image': userimage,
      });
    } catch (e) {
      print(e);
    }
  }
}
