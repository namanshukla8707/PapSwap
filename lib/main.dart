// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:papswap/widgets/bottomnavigationbar.dart';
import 'package:papswap/widgets/homepage.dart';
import 'package:papswap/widgets/loginpage.dart';
import 'package:papswap/widgets/profile.dart';
import 'package:papswap/widgets/wallet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home:
          // WalletPage(),
          // ProfilePage(),
          StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const BottomNavigationPage();
          } else {
            return const LoginWidget();
          }
        },
      ),
    );
  }
}
