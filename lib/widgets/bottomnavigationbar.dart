// ignore_for_file: override_on_non_overriding_member, must_be_immutable, unused_import, prefer_const_constructors, avoid_print

// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papswap/question_page.dart';
import 'package:papswap/widgets/feed.dart';
import 'package:papswap/widgets/homepage.dart';
import 'package:papswap/widgets/profile.dart';
import 'package:papswap/widgets/provider.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:papswap/widgets/wallet.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});
  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  DataController? dataController;
  @override
  void initState() {
    super.initState();
    dataController = Get.put(DataController());
  }

  int currentIndex1 = 0;
  final screens = [
    FeedPage(),
    // QuestionPage(),
    HomePage(),
    WalletPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex1],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.red),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              (currentIndex1 == 0) ? Icons.home : Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentIndex1 == 1) ? Icons.home : Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentIndex1 == 2)
                  ? Icons.account_balance_wallet
                  : Icons.account_balance_wallet_outlined,
              color: Colors.black,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentIndex1 == 3) ? Icons.person : Icons.person_outline,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex1,
        onTap: (index) {
          setState(
            () {
              currentIndex1 = index;
            },
          );
        },
      ),
    );
  }
}
