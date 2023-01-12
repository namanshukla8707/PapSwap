// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papswap/widgets/offers.dart';
import 'package:papswap/widgets/provider.dart';
import 'package:papswap/widgets/styling.dart';
import 'package:papswap/widgets/supertoken.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});
  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  DataController? dataController;
  String val = '0';
  @override
  void initState() {
    super.initState();
    dataController = Get.put(DataController());
    try {
      val = dataController!.myDocumnet!.get('wallet').toString();
    } catch (e) {
      val = '0';
    }
  }

  String id = DateTime.now().millisecondsSinceEpoch.toString();

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
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                floating: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  'account overview',
                  style: TextStyle(color: Color.fromRGBO(26, 35, 126, 1)),
                ),
                actions: [
                  IconButton(
                      tooltip: 'Wallet log',
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 28,
                      )),
                ],
              ),
            ];
          },
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.5 * widthMultiplier),
                        child: Container(
                          height: 14.5711 * heightMultiplier,
                          padding: EdgeInsets.symmetric(
                              horizontal: 0 * widthMultiplier),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 70, 177, 254),
                              Color.fromARGB(255, 43, 140, 209),
                              Color.fromARGB(255, 31, 124, 192),
                              Color.fromARGB(255, 18, 104, 166),
                              Color.fromARGB(255, 11, 90, 147),
                              Color.fromARGB(255, 5, 73, 121),
                              Color.fromARGB(255, 0, 58, 100),
                            ]),
                            borderRadius: BorderRadius.circular(12),
                            // color: Colors.red,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppThemePapswap()
                                  .freeboxw(2.55 * widthMultiplier),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppThemePapswap()
                                      .freeboxh(3.9953 * heightMultiplier),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // AppThemePapswap()
                                      //     .freeboxw(2.55 * widthMultiplier),
                                      Container(
                                        color: Colors.transparent,
                                        child: Text(
                                          // 'naman',
                                          val.length == 1 ? "0$val" : val,
                                          style: TextStyle(
                                              fontSize:
                                                  2.82021 * textMultiplier),
                                        ),
                                      ),
                                      AppThemePapswap()
                                          .freeboxw(2.55 * widthMultiplier),
                                      Text(
                                        'paptokens',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 1.763 * textMultiplier),
                                      ),
                                    ],
                                  ),
                                  AppThemePapswap().freeboxh(0),
                                  Text(
                                    'Current Balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 1.88 * textMultiplier,
                                    ),
                                  ),
                                ],
                              ),
                              AppThemePapswap()
                                  .freeboxw(5.64 * widthMultiplier),
                              AppThemePapswap()
                                  .freeboxw(18.0112 * widthMultiplier),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // AppThemePapswap()
                                  //     .freeboxh(3.53 * heightMultiplier),
                                  Container(
                                    // height: 50,
                                    // width: 60,
                                    padding: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                      // borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          1.8 * heightMultiplier),
                                      child: Icon(
                                        Icons.add,
                                        size: 3.3 * heightMultiplier,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      AppThemePapswap().freeboxh(2.3502 * heightMultiplier),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.5 * widthMultiplier),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: 43.74 * widthMultiplier,
                                // height: 310,
                                padding: EdgeInsets.all(0),
                                margin: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(34.89 * widthMultiplier),
                                        Expanded(
                                          child: IconButton(
                                            constraints: BoxConstraints(
                                              maxHeight:
                                                  5.76 * heightMultiplier,
                                            ),
                                            padding: EdgeInsets.all(0),
                                            alignment: Alignment.topRight,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.info_outline,
                                            ),
                                          ),
                                        ),
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                        Container(
                                          padding: EdgeInsets.all(0),
                                          height: 7.051 * heightMultiplier,
                                          width: 20.2 * widthMultiplier,
                                          // color: Colors.red,
                                          child: Image.asset(
                                            'assets/supertoken.png',
                                            alignment: Alignment.topCenter,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                        Text(
                                          'SuperTokens',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 1.998 * textMultiplier,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                        Expanded(
                                          child: Text(
                                            'SuperTokens can only be earned after the content verification.',
                                            // maxLines: 3,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 145, 145, 145),
                                              // fontWeight: FontWeight.w400,
                                              // fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                        Expanded(
                                          child: Text(
                                            'values upto 500 INR for every SuperTokens',
                                            // maxLines: 3,
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                        AppThemePapswap()
                                            .freeboxw(1.53 * widthMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap().freeboxh(
                                            0.940071 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(10.5 * widthMultiplier),
                                        Container(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SuperToken(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'Check Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.red),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            AppThemePapswap().freeboxw(2.55 * widthMultiplier),
                            Expanded(
                              child: Container(
                                width: 43.74 * widthMultiplier,
                                // height: 310,

                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  // border: Border.all(
                                  //     // color: Colors.black,
                                  //     // width: 1,
                                  //     ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(34.89 * widthMultiplier),
                                        Container(
                                          // color: Colors.green,
                                          child: Expanded(
                                            child: IconButton(
                                              constraints: BoxConstraints(
                                                maxHeight:
                                                    5.76 * heightMultiplier,
                                              ),
                                              padding: EdgeInsets.all(0),
                                              alignment: Alignment.topRight,
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.info_outline,
                                              ),
                                            ),
                                          ),
                                        ),
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                        Container(
                                          padding: EdgeInsets.all(0),
                                          height: 7.051 * heightMultiplier,
                                          width: 20.2 * widthMultiplier,
                                          // color: Colors.red,
                                          child: Image.asset(
                                            'assets/paptoken.png',
                                            // fit: BoxFit.fill,
                                            alignment: Alignment.topCenter,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                        Text(
                                          'Earn PapTokens',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 1.998 * textMultiplier,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(2.55 * widthMultiplier),
                                        Expanded(
                                          child: Text(
                                            '''Earn PapTokens daily with bonus and through swaps.‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎''',
                                            // maxLines: 3,
                                            //  SuperTokens can only be earned after the content verification.
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 145, 145, 145),
                                              // fontWeight: FontWeight.w400,
                                              // fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(1.783 * widthMultiplier),
                                        Expanded(
                                          child: Text(
                                            '''upto 45 PapTokens every week.‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎''',
                                            // maxLines: 3,

                                            //  values upto 500 INR for every SuperTokens
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                        AppThemePapswap()
                                            .freeboxw(1.53 * widthMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap().freeboxh(
                                            .940071 * heightMultiplier),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppThemePapswap()
                                            .freeboxw(10.5 * widthMultiplier),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Earn Now',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        AppThemePapswap()
                                            .freeboxh(1.18 * heightMultiplier)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          AppThemePapswap()
                              .freeboxh(1.6451234 * heightMultiplier),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.5 * widthMultiplier),
                        child: Row(
                          children: [
                            AppThemePapswap().freeboxw(1.53 * widthMultiplier),
                            Text(
                              'Claim Rewards  (Coming Soon)',
                              style: TextStyle(
                                fontSize: 2.12 * textMultiplier,
                                color: Colors.blue.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          AppThemePapswap()
                              .freeboxh(1.880141 * heightMultiplier),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.5 * widthMultiplier),
                        child: Row(
                          children: [
                            AppThemePapswap().freeboxw(1.53 * widthMultiplier),
                            Text(
                              'New Offers',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 1.880141 * textMultiplier,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          AppThemePapswap()
                              .freeboxh(.940071 * heightMultiplier),
                        ],
                      ),
                      NewOffers(),
                    ],
                  ),
                ),

                // SliverList(
                //     delegate: SliverChildBuilderDelegate(
                //   (context, index) {
                //     return widget.rewardData.rewarddata[index].data()['show']
                //         ? RewardTile(
                //             rewarddata:
                //                 widget.rewardData.rewarddata[index].data(),
                //           )
                //         : const SizedBox();
                //   },
                //   childCount: widget.rewardData.rewarddata.length,
                // )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
