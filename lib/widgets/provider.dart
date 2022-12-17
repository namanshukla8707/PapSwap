import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DataController extends GetxController{
  String? uid= FirebaseAuth.instance.currentUser!.uid;
  DocumentSnapshot? myDocumnet;
  getDocument(){
    FirebaseFirestore.instance.collection('users').doc(uid).snapshots().listen((event) {
      myDocumnet=event;
    });
  }
  @override
  void onInit(){
    super.onInit();
    getDocument();
  }
}