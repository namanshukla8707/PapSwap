// ignore_for_file: override_on_non_overriding_member, must_be_immutable, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, avoid_web_libraries_in_flutter, unused_field, unused_local_variable
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papswap/widgets/bottomnavigationbar.dart';
import 'package:papswap/widgets/flames_post.dart';
import 'package:papswap/widgets/homepage.dart';
import 'package:papswap/widgets/profilesetting.dart';
import 'package:papswap/widgets/provider.dart';
import 'package:papswap/widgets/reswap_post.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:papswap/widgets/wallet.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  DataController? dataController;
  String email = '';
  String username = '';

  @override
  void initState() {
    super.initState();
    dataController = Get.put(DataController());
    try {
      email = dataController!.myDocumnet!.get('email').toString();
    } catch (e) {
      email = '';
    }
    try {
      username = dataController!.myDocumnet!.get('username').toString();
    } catch (e) {
      username = '';
    }
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
      appBar: AppBar(
        title: Text(
          'your profile',
          style: TextStyle(
              fontSize: 2.8202 * textMultiplier,
              fontWeight: FontWeight.w900,
              color: Colors.indigo.shade900),
        ),
        elevation: 0,
        actions: [
          Container(
            width: 12.7325 * widthMultiplier,
            height: 5.8754 * heightMultiplier,
            // color: Colors.green,
            child: IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              icon: Icon(Icons.settings_outlined),
              color: Colors.black,
            ),
          ),
        ],
        // foregroundColor: Colors.indigo.shade900,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppThemePapswap().freeboxh(2.35 * heightMultiplier),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppThemePapswap().freeboxw(6.621 * widthMultiplier),
              CircleAvatar(
                radius: 34,
                backgroundImage: AssetImage('assets/finallogo.PNG'),
              ),
              AppThemePapswap().freeboxw(5.093 * widthMultiplier),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppThemePapswap().freeboxh(0.7051 * heightMultiplier),
                    Text(
                      username,
                      // "akfkjafkja",
                      maxLines: 2,
                      style: TextStyle(
                        letterSpacing: 1,
                        height: 0.12 * heightMultiplier,
                        wordSpacing: 1,
                        fontWeight: FontWeight.w700,
                        fontSize: 2.3502 * textMultiplier,
                      ),
                    ),
                    AppThemePapswap().freeboxh(1.1751 * heightMultiplier),
                    Text(
                      email,
                      // "hfkhfgkhfgfknksvsvbsvjskvksbkjbkjbsvkjbsjkdvbjdbhb",
                      maxLines: 3,
                      // overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 1.998 * textMultiplier,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppThemePapswap().freeboxh(2.35 * heightMultiplier),
          Container(
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppThemePapswap().freeboxw(7.64 * widthMultiplier),
                Icon(
                  Icons.calendar_month,
                  size: 26,
                  color: Colors.grey,
                ),
                AppThemePapswap().freeboxw(1.02 * widthMultiplier),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.764 * heightMultiplier,
                    ),
                    Text(
                      'Joined April 2022',
                      style: TextStyle(
                        fontSize: 1.763 * textMultiplier,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppThemePapswap().freeboxh(1.0 * heightMultiplier),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              height: 66.63 * heightMultiplier,
              child: DefaultTabController(
                length: 2,
                initialIndex: 1,
                child: Scaffold(
                  appBar: TabBar(
                    // controller: _tabController,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    indicatorWeight: 1,
                    indicatorColor: Colors.blue,
                    labelStyle: TextStyle(
                      fontSize: 1.645 * textMultiplier,
                    ),
                    tabs: [
                      Tab(
                        text: 'Reswap',
                      ),
                      Tab(
                        text: 'Flames',
                      ),
                    ],
                  ),

                  // Container(
                  // color: Colors.amber,

                  body: TabBarView(
                    // controller: _tabController
                    // controller: TabController(length: 1),
                    children: [
                      Center(
                        child: ReswapPost(),
                      ),
                      Center(
                        child: FlamesPost(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
