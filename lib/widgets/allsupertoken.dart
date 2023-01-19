// ignore_for_file: unused_import, prefer__ructors, prefer__literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:papswap/widgets/styling.dart';

class AllSuperToken extends StatelessWidget {
  AllSuperToken({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppThemePapswap().freeboxh(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Sachin Tendulkar',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontSize: 16,
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                    'assets/Veer_token.jpeg',
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
                        'Veer Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            // TextSpan(
                            //   text: 'PapSwap',
                            //   //  tokendata['denotedTo'],
                            //   style:  TextStyle(
                            //     fontFamily: 'Poppins',
                            //     color: Colors.black,
                            //     fontWeight: FontWeight.w400,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Get upto ',
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                    'assets/Nightangle_token.jpeg',
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
                        'Nightingale of India Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Lata Mangeshkar',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Indian Express Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 13,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Leander Peas',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Mohan Veena Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 13,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Vishwa Mohan Bhatt',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Sudhakantha Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 13,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Bhupen Hazarika',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Forest Man Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 13,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Jadav Payeng',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Dharti Aaba Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Nov 29,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Birsa Munda',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Liberator Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Nov 29,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Lt. General Sagat Singh',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Jimmy-Jimmy Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Nov 28,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Mithun Chakraborty',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Showman Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Nov 25,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Raj Kapoor',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Swayamsewak Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Nov 22,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'K. B. Hedgewar',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                        'Hindutva Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Nov 18,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Guruji',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                        'Chanayka Token',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Oct 23,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Shri Amit Shah',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Nritya Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Oct 19,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Smt Mrinalini Sarabhai',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Field Marshal Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Oct 15,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Field Marshal Sam Manekshaw',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
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
                        'Parmanu Token',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      AppThemePapswap().freeboxh(10),
                      RichText(
                        text: TextSpan(
                          text: 'Launched On:  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Oct 11,2021",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'Dr.Homi Jehangir Bhabha',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
        Padding(
          padding: EdgeInsets.all(8.0),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: "Feb 18,2022",
                              style: TextStyle(
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'PapSwap',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          children: [
                            TextSpan(
                              text: '500INR ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 1, 162, 7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'by redeeming this SuperToken.',

                              //  tokendata['denotedTo'],
                              style: TextStyle(
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
                          style: TextStyle(
                              // fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                              color: Colors.red),
                          children: [
                            TextSpan(
                              text: 'SuperTokens left of ',
                              //  tokendata['denotedTo'],
                              style: TextStyle(
                                // fontFamily: 'Poppins',
                                color: Colors.black,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '100. ',
                              style: TextStyle(
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
