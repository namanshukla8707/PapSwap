// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

googleLogin() async {
    UserCredential userCredential;

    // print("googleLogin method Called");
    GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      var reslut = await googleSignIn.signIn();
      if (reslut == null) {
        return;
      }
      
      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
        userCredential =   await FirebaseAuth.instance.signInWithCredential(credential);
      String uid = userCredential.user!.uid;
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
          'username':  reslut.displayName.toString(),
          'email': reslut.email.toString(),
          'dateJoined':DateTime.now().toString(),
          'superCoinVal':5,
          'superCoins':[],
          'userImage':'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.alamy.com%2Fstock-photo%2Fpsg-coupe-de-france-football.html%3Fpage%3D6&psig=AOvVaw3iCw33V6EHXzAsjBhlbaYm&ust=1670019200901000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiM5bu42fsCFQAAAAAdAAAAABAE',
           'userType':'viewer',
           'wallet':5
      });
    } catch (error) {
      // print(error);
    }
  }
