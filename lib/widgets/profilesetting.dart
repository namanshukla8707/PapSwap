// ignore_for_file: sort_child_properties_last, no_leading_underscores_for_local_identifiers, deprecated_member_use, library_private_types_in_public_api, prefer_const_constructors, unused_import, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papswap/widgets/loginpage.dart';
// import 'package:papswap/models/app/color_const.dart';
// import 'package:papswap/services/authservice/authservice.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
        bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 0.023502 * heightMultiplier,
            ),
            preferredSize: const Size.fromHeight(4.0)),
        leading: Padding(
          padding: EdgeInsets.only(left: 2.55 * widthMultiplier),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 2.3502 * textMultiplier,
            fontWeight: FontWeight.bold,
            color: Colors.indigo.shade900,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ListTile(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (ctx) {
                          return AlertDialog(
                            contentPadding: const EdgeInsets.fromLTRB(
                                24.0, 12.0, 12.0, 0.0),
                            title: const Text(
                              'Reset Password',
                              textAlign: TextAlign.start,
                            ),
                            content: const Text(
                              'Password reset email will be sent to your registered email address.',
                              textAlign: TextAlign.start,
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text(
                                  'CANCEL',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                              ),
                              TextButton(
                                child: const Text(
                                  'SEND',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                onPressed: () async {
                                  // AuthService().changepassword().then((value) {
                                  //   Navigator.of(context).pop();
                                  //   ScaffoldMessenger.of(context).showSnackBar(
                                  //     const SnackBar(
                                  //       content: Text(
                                  //         'Password reset link sent!',
                                  //         textAlign: TextAlign.center,
                                  //         style:
                                  //             TextStyle(fontFamily: 'Poppins'),
                                  //       ),
                                  //       backgroundColor: Colors.blue,
                                  //     ),
                                  //   );
                                  // },);
                                },
                              )
                            ],
                          );
                        });
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 6.12 * widthMultiplier),
                  minLeadingWidth: 7.64 * widthMultiplier,
                  title: Text(
                    'Passwords',
                    style: TextStyle(
                      fontSize: 1.998 * textMultiplier,
                    ),
                  ),
                  leading: const Icon(Icons.password)),
              ListTile(
                  onTap: () async {
                    const _url = 'https://papswap.in/faq';
                    if (!await canLaunch(_url)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Could not launch $_url',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          backgroundColor: Theme.of(context).errorColor,
                        ),
                      );
                    } else {
                      launch(_url);
                    }
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 6.12 * widthMultiplier),
                  minLeadingWidth: 7.64 * widthMultiplier,
                  title: Text(
                    'FAQs',
                    style: TextStyle(
                      fontSize: 1.998 * textMultiplier,
                    ),
                  ),
                  leading: const Icon(Icons.question_answer)),
              ListTile(
                  onTap: () async {
                    const email = 'hello@papswap.in';
                    final url =
                        'mailto:$email?subject=${Uri.encodeFull('Have a query and want to connect.')}&body=${Uri.encodeFull(' ')}';
                    if (!await launch(url)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Could not launch Email to $email',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          backgroundColor: Theme.of(context).errorColor,
                        ),
                      );
                    }
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 6.12 * widthMultiplier),
                  minLeadingWidth: 7.64 * widthMultiplier,
                  title: Text(
                    'Help & Support',
                    style: TextStyle(
                      fontSize: 1.998 * textMultiplier,
                    ),
                  ),
                  leading: const Icon(Icons.help)),
              ListTile(
                  onTap: () async {
                    const _url = 'https://papswap.in/terms-n-conditions';
                    if (!await canLaunch(_url)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Could not launch $_url',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          backgroundColor: Theme.of(context).errorColor,
                        ),
                      );
                    } else {
                      launch(_url);
                    }
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 6.12 * widthMultiplier),
                  minLeadingWidth: 7.64 * widthMultiplier,
                  title: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 1.998 * textMultiplier,
                    ),
                  ),
                  leading: const Icon(Icons.checklist_outlined)),
              ListTile(
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        contentPadding:
                            const EdgeInsets.fromLTRB(24.0, 12.0, 12.0, 0.0),
                        title: const Text(
                          'Logout',
                          textAlign: TextAlign.start,
                        ),
                        content: const Text(
                          'Are you sure you want to log out?',
                          textAlign: TextAlign.start,
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text(
                              'CANCEL',
                              style: TextStyle(color: Colors.grey),
                            ),
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                          ),
                          TextButton(
                            child: const Text(
                              'LOGOUT',
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {
                              Get.deleteAll();
                              FirebaseAuth.instance.signOut();
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 6.12 * widthMultiplier),
                minLeadingWidth: 7.64 * widthMultiplier,
                title: const Text(
                  'Log Out',
                  style: TextStyle(color: Colors.red, fontSize: 17),
                ),
                leading: const Icon(
                  Icons.logout_rounded,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          // const Padding(
          //   padding: EdgeInsets.all(15.0),
          //   child: Text('betaV1.0'),
          // ),
        ],
      ),
    );
  }
}
