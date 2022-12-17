// ignore_for_file: avoid_print, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_element, must_be_immutable, prefer_final_fields, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, use_build_context_synchronously, sized_box_for_whitespace
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:papswap/widgets/styling.dart';
// ignore: unused_import

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  String _email = '';

  bool isClicked = false;

  String _password = '';
  final _formKey = GlobalKey<FormState>();
  forgotpassword() async {
    print('clickedd');
    setState(() {
      isClicked = true;
    });
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: _email);
        print('error');
        showAlertDialog(BuildContext context) {
          // set up the button
          Widget okButton = TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
          );

          // set up the AlertDialog
          AlertDialog alert = AlertDialog(
            content:
                Text("A Password reset link has been sent to entered email"),
            actions: [
              okButton,
            ],
          );

          // show the dialog
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        }

        showAlertDialog(context);
      } on FirebaseAuthException catch (e) {
        var snack = SnackBar(
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 1),
          content: Text(
            e.message.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              // color: Colors.black,
            ),
          ),
          backgroundColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        );
        ScaffoldMessenger.of(context).showSnackBar(snack);
        print(e.toString());
      }
    }
    setState(() {
      isClicked = false;
    });
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
        centerTitle: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        // title: Text(
        //   'Back',
        //   textAlign: TextAlign.center,
        // ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // Container(
          children: [
            AppThemePapswap().freeboxh(2 * heightMultiplier),
            Container(
              // decoration: BoxDecoration(color: Colors.green),
              // padding: EdgeInsets.all(20),
              // margin: EdgeInsets.all(30),
              height: 29.38 * heightMultiplier,
              child: Container(
                  // padding: EdgeInsets.all(20),
                  // height: 150,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/forgot.png',
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            AppThemePapswap().freeboxh(2.5 * heightMultiplier),
            Container(
              // color: Colors.green,
              margin:
                  EdgeInsets.symmetric(horizontal: 12.7324 * widthMultiplier),
              // padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 2.6 * textMultiplier,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  AppThemePapswap().freeboxh(4 * heightMultiplier),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Enter your email for the verification process',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 1.65 * textMultiplier,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'We will send Password reset link.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 1.65 * textMultiplier,
                      ),
                    ),
                  ),
                  AppThemePapswap().freeboxh(3 * heightMultiplier),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 2.12 * textMultiplier,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AppThemePapswap().freeboxh(2 * heightMultiplier),
                  Container(
                    // padding: EdgeInsets.only(left: 45, right: 30),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.06 * heightMultiplier,
                                color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.06 * heightMultiplier,
                                color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 102, 92, 92),
                            fontSize: 1.9 * textMultiplier,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1.41 * heightMultiplier,
                              horizontal: 3.1 * widthMultiplier),
                        ),
                        key: const ValueKey('email'),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'Email should not be empty';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          _email = value.toString().trim();
                        },
                      ),
                    ),
                  ),
                  AppThemePapswap().freeboxh(4.5 * heightMultiplier),
                  Container(
                    height: 5.3 * heightMultiplier,
                    width: 76.34 * widthMultiplier,
                    // color: Colors.red,
                    child: ElevatedButton(
                        onPressed: () {
                          forgotpassword();
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(2),
                          shadowColor:
                              MaterialStateProperty.all(Colors.red[200]),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        child: isClicked
                            ? const CircularProgressIndicator(
                                color: Colors.white)
                            : Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 1.65 * textMultiplier,
                                ),
                              )),
                  ),
                ],
              ),
            ),
            AppThemePapswap().freeboxh(7 * heightMultiplier),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.top,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
