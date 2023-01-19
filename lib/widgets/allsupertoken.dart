// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:papswap/widgets/styling.dart';

class AllSuperToken extends StatelessWidget {
  const AllSuperToken({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppThemePapswap().freeboxh(10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  child: Image.asset(
                    'assets/Sachin_Tendulkar.jpeg',
                  ),
                ),
                AppThemePapswap().freeboxh(2),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppThemePapswap().freeboxh(10),
                      Text(
                        'Master Blaster Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Denoted To:   ',
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Get upto ',
                          style: const TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: const TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: const TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.blue,
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          text: '100 ',
                          style: const TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: const TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100 ',
                              style: const TextStyle(
                                  // fontFamily: 'Poppins',
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
