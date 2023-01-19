// ignore_for_file: unused_import, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:papswap/widgets/allsupertoken.dart';
import 'package:papswap/widgets/mysupertoken.dart';

class SuperToken extends StatefulWidget {
  const SuperToken({super.key});

  @override
  State<SuperToken> createState() => _SuperTokenState();
}

class _SuperTokenState extends State<SuperToken> {
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
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: Text(
            'SuperTokens',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade700,
                fontSize: 20),
          ),
        ),
        body: Column(
          children: [
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
                          text: 'My SuperTokens',
                        ),
                        Tab(
                          text: 'All SuperTokens',
                        ),
                      ],
                    ),
                    body: TabBarView(
                      children: [
                        Center(
                          child: AllSuperToken(),
                        ),
                        Center(
                          child: MySuperToken(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
        //
        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 15,
        //     vertical: 10,
        //   ),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: Colors.white,
        //     ),
        //     padding: const EdgeInsets.all(10),
        //     child: Row(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         CachedNetworkImage(
        //           key: UniqueKey(),
        //           // cacheManager: customCacheManger,
        //           imageUrl: 'https://wallpaperaccess.com/full/5707282.jpg',
        //           //  tokendata['tokenImg'],
        //           placeholder: (context, url) => Container(
        //             color: Colors.black12,
        //           ),
        //           errorWidget: (context, url, error) => const Icon(
        //             Icons.error,
        //             color: Colors.red,
        //           ),
        //           fit: BoxFit.fitHeight,
        //           height: 130,
        //         ),
        //         const SizedBox(
        //           width: 5,
        //         ),
        //         Expanded(
        //           child: Padding(
        //             padding: const EdgeInsets.all(1.0),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 // ignore: prefer_const_constructors
        //                 Text(
        //                   'PapSwap',
        //                   // tokendata['tokenName'],
        //                   maxLines: 2,
        //                   style: const TextStyle(
        //                     fontSize: 18,
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.indigo,
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 8,
        //                 ),
        //                 RichText(
        //                   text: TextSpan(
        //                     text: 'Launched On:   ',
        //                     style: const TextStyle(
        //                         fontFamily: 'Poppins',
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black54),
        //                     // ignore: prefer_const_literals_to_create_immutables
        //                     children: [
        //                       // ignore: prefer_const_constructors
        //                       TextSpan(
        //                         text: 'PapSwap',
        //                         //  DateFormat('MMM dd, yyyy')
        //                         //     .format(tokendata['launchedOn'].toDate()),
        //                         style: const TextStyle(
        //                           fontFamily: 'Poppins',
        //                           color: Colors.black,
        //                           fontWeight: FontWeight.w400,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 2,
        //                 ),
        //                 RichText(
        //                   text: TextSpan(
        //                     text: 'Denoted To:   ',
        //                     style: const TextStyle(
        //                         fontFamily: 'Poppins',
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black54),
        //                     children: [
        //                       TextSpan(
        //                         text: 'PapSwap',
        //                         //  tokendata['denotedTo'],
        //                         style: const TextStyle(
        //                           fontFamily: 'Poppins',
        //                           color: Colors.black,
        //                           fontWeight: FontWeight.w400,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 5,
        //                 ),
        //
        //                 const SizedBox(
        //                   height: 2,
        //                 ),
        //                 RichText(
        //                   text: TextSpan(
        //                     text: '500',
        //                     // '${tokendata['tokenAmount']['left']}',
        //                     style: const TextStyle(
        //                         fontFamily: 'Poppins',
        //                         fontWeight: FontWeight.w400,
        //                         color: Colors.red),
        //                     children: [
        //                       TextSpan(
        //                         text: ' SuperTokens left of ',
        //                         style: TextStyle(
        //                           fontFamily: 'Poppins',
        //                           color: Colors.indigo.shade900,
        //                           fontWeight: FontWeight.w400,
        //                         ),
        //                       ),
        //                       TextSpan(
        //                         text: '500',
        //                         // '${tokendata['tokenAmount']['total']}.',
        //                         style: const TextStyle(
        //                           fontFamily: 'Poppins',
        //                           color: Colors.red,
        //                           fontWeight: FontWeight.w400,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // ),
        );
  }
}
