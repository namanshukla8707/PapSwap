// ignore_for_file: use_key_in_widget_ructors, prefer__ructors, duplicate_ignore, prefer__literals_to_create_immutables, sized_box_for_whitespace, avoid_print, must_be_immutable, unused_local_variable, unused_import, avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

// import 'dart:html';
// import 'dart:html';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:papswap/widgets/styling.dart';

class NewOffers extends StatelessWidget {
  // final snap1;
  //  NewOffers({
  //   Key? key,
  //   required this.snap1,
  // }) : super(key: key);
  List<MaterialColor> colorizeColors = [
    // Colors.purple,
    Colors.blue,
    // Colors.yellow,
    Colors.red,
    Colors.blue,
    Colors.red,
  ];
  TextStyle colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    // fontFamily: 'Horizon',
  );
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image.network0'www.greenqueen.com.hk/wp-content/uploads/2020/01/Coming-Soon.jpg'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.5 * widthMultiplier),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 3.57 * widthMultiplier),
              // height: 45.83 * heightMultiplier,
              decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.65 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.645 * heightMultiplier),
                        // ignore: prefer__ructors
                        Text(
                          'Newspaper Subcription',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                          ),
                        ),
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        Text(
                          '500  ',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'PapTokens ',
                          style: TextStyle(
                            fontSize: 1.763 * textMultiplier,
                            // fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: AppThemePapswap().freeboxh(1.88 * heightMultiplier),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      // height: 35.3 * heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/finallogo.PNG',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        AppThemePapswap().freeboxh(2.3501 * heightMultiplier),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.5 * widthMultiplier),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 3.57 * widthMultiplier),
              // height: 45.83 * heightMultiplier,
              decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.65 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.645 * heightMultiplier),
                        // ignore: prefer__ructors
                        Text(
                          'Newspaper Subcription',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                          ),
                        ),
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        Text(
                          '500  ',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'PapTokens ',
                          style: TextStyle(
                            fontSize: 1.763 * textMultiplier,
                            // fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: AppThemePapswap().freeboxh(1.88 * heightMultiplier),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      // height: 35.3 * heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/finallogo.PNG',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        AppThemePapswap().freeboxh(2.3501 * heightMultiplier),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.5 * widthMultiplier),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 3.57 * widthMultiplier),
              // height: 45.83 * heightMultiplier,
              decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.65 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.645 * heightMultiplier),
                        // ignore: prefer__ructors
                        Text(
                          'Newspaper Subcription',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                          ),
                        ),
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        Text(
                          '500  ',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'PapTokens ',
                          style: TextStyle(
                            fontSize: 1.763 * textMultiplier,
                            // fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: AppThemePapswap().freeboxh(1.88 * heightMultiplier),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      // height: 35.3 * heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/finallogo.PNG',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        AppThemePapswap().freeboxh(2.3501 * heightMultiplier),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.5 * widthMultiplier),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 3.57 * widthMultiplier),
              // height: 45.83 * heightMultiplier,
              decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.65 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(1.645 * heightMultiplier),
                        // ignore: prefer__ructors
                        Text(
                          'Newspaper Subcription',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                          ),
                        ),
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        AppThemePapswap().freeboxh(0.94 * heightMultiplier),
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Row(
                      children: [
                        Text(
                          '500  ',
                          style: TextStyle(
                            fontSize: 1.88 * textMultiplier,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'PapTokens ',
                          style: TextStyle(
                            fontSize: 1.763 * textMultiplier,
                            // fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: AppThemePapswap().freeboxh(1.88 * heightMultiplier),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      // height: 35.3 * heightMultiplier,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/finallogo.PNG',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        AppThemePapswap().freeboxh(2.3501 * heightMultiplier),
        Row(
          children: [
            AppThemePapswap().freeboxw(1.88 * heightMultiplier),
            Text(
              'Movies',
              style: TextStyle(
                  color: Colors.blue, fontSize: 1.88 * textMultiplier),
            ),
          ],
        ),
        AppThemePapswap().freeboxh(1.645 * heightMultiplier),
        Container(
          padding: EdgeInsets.all(0),
          // width: screenWidth,
          height: 375,
          width: screenWidth,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(
                      horizontal: 3.57 * widthMultiplier,
                      vertical: 1.645 * heightMultiplier),
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppThemePapswap().freeboxh(10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://pbs.twimg.com/media/FgiltsdaUAAUG4Z?format=jpg&name=large',
                            // fit: BoxFit.fill,
                          ),
                        ),
                        AppThemePapswap().freeboxh(16),
                        Text('Movie'),
                        AppThemePapswap().freeboxh(8),
                        Row(
                          children: [
                            Text('200'),
                            AppThemePapswap().freeboxw(3),
                            Text('PapTokens'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppThemePapswap().freeboxw(16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(
                      horizontal: 3.57 * widthMultiplier,
                      vertical: 1.645 * heightMultiplier),
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppThemePapswap().freeboxh(10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://www.joblo.com/wp-content/uploads/2022/01/avatar-2-poster-1-400x600.jpg',
                            // fit: BoxFit.fill,
                          ),
                        ),
                        AppThemePapswap().freeboxh(16),
                        Text('Movie'),
                        AppThemePapswap().freeboxh(8),
                        Row(
                          children: [
                            Text('200'),
                            AppThemePapswap().freeboxw(3),
                            Text('PapTokens'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppThemePapswap().freeboxw(16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(
                      horizontal: 3.57 * widthMultiplier,
                      vertical: 1.645 * heightMultiplier),
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppThemePapswap().freeboxh(10),
                        Image.network(
                          'https://i0.wp.com/www.indesignskills.com/wp-content/uploads/2022/06/The-Batman-2.jpg?resize=850%2C1259&ssl=1',
                          // fit: BoxFit.fill,
                        ),
                        AppThemePapswap().freeboxh(16),
                        Text('Movie'),
                        AppThemePapswap().freeboxh(8),
                        Row(
                          children: [
                            Text('200'),
                            AppThemePapswap().freeboxw(3),
                            Text('PapTokens'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppThemePapswap().freeboxw(16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(
                      horizontal: 3.57 * widthMultiplier,
                      vertical: 1.645 * heightMultiplier),
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppThemePapswap().freeboxh(10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://1.bp.blogspot.com/-xyH0Qs6yPmI/Xvs0bhdcQPI/AAAAAAAAZ_s/9kRuWAaGKLoXcwq-Dz-cgswdrMV3eHYOQCLcBGAsYHQ/s1600/Bhuj-Movie-Poster.jpg',
                            // fit: BoxFit.fill,
                          ),
                        ),
                        AppThemePapswap().freeboxh(16),
                        Text('Movie'),
                        AppThemePapswap().freeboxh(8),
                        Row(
                          children: [
                            Text('200'),
                            AppThemePapswap().freeboxw(3),
                            Text('PapTokens'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppThemePapswap().freeboxw(16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(
                      horizontal: 3.57 * widthMultiplier,
                      vertical: 1.645 * heightMultiplier),
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppThemePapswap().freeboxh(10),
                        ClipRRect(
                          child: Image.network(
                            'https://www.joblo.com/wp-content/uploads/2022/11/the-devil-conspiracy-1-400x600.jpg',
                            // fit: BoxFit.fill,
                          ),
                        ),
                        AppThemePapswap().freeboxh(16),
                        Text('Movie'),
                        AppThemePapswap().freeboxh(8),
                        Row(
                          children: [
                            Text('200'),
                            AppThemePapswap().freeboxw(3),
                            Text('PapTokens'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppThemePapswap().freeboxw(16),
            ],
          ),
        ),
      ],
    );
  }
}
