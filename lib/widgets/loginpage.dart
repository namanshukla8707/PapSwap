// ignore_for_file: unused_local_variable, avoid_print, prefer_const_constructors, unused_field, avoid_renaming_method_parameters

import 'package:flutter/material.dart';
import 'package:papswap/auth/authprocess.dart';
import 'package:papswap/widgets/forgot_password.dart';
import 'package:papswap/widgets/indegator.dart';
import 'package:papswap/widgets/styling.dart';

import '../auth/withgoogle.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String _email = '';

  bool isLogin = true;

  String _password = '';

  String _username = '';

  bool _isHidden = true;

  bool isClickedForAuth = false;

  bool isClickedForgoogleAuth = false;

  bool flag = false;
  List<dynamic> list = [];
  String error = '';
  startAuthentication() async {
    setState(() {
      isClickedForAuth = true;
    });
    print('called');
    final validity = _formKey.currentState!.validate();
    if (validity == true) {
      _formKey.currentState!.save();
      await authenticate();
    }
    setState(() {
      isClickedForAuth = false;
    });
  }

  authenticate() async {
    setState(() {
      flag = true;
    });
    final auth = Authprocess();
    await auth.tryAuth(_username, _email, _password, isLogin, list);
    error = auth.errorgetter();
    setState(() {
      flag = false;
    });
  }

  signingoogle() async {
    print('try for google');
    await googleLogin();
    setState(() {
      isClickedForgoogleAuth = false;
    });
  }

  final _formKey = GlobalKey<FormState>();

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
    // ignore: sized_box_for_whitespace
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // AppThemePapswap().freeboxh(12.93 * heightMultiplier),
            ClipPath(
              clipper: ArcClipper(),
              child: Container(
                height: 33.8 * heightMultiplier,
                width: screenWidth,
                padding: EdgeInsets.only(top: 3.53 * heightMultiplier),
                margin: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(200),
                  // bottomRight: Radius.circular(200)),
                  color: Color.fromARGB(161, 255, 214, 214),
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 80, bottom: 60, left: 90, right: 90),
                  // height: 1.8 * heightMultiplier,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(1.18 * heightMultiplier),
                  // ),
                  child: Image.asset(
                    'assets/finallogo.PNG',
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            AppThemePapswap().freeboxh(0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('PAP S',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 2.35 * textMultiplier,
                    )),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(270 / 360),
                  child: Text(
                    "W",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 2.12 * textMultiplier,
                    ),
                  ),
                ),
                Text('AP',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 2.35 * textMultiplier,
                    )),
              ],
            ),
            AppThemePapswap().freeboxh(0.24 * heightMultiplier),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'POLICIES ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 2.12 * textMultiplier,
                  ),
                ),
                Text(
                  'OVER ',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 2.12 * textMultiplier,
                  ),
                ),
                Text(
                  'POLITICS',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 2.12 * textMultiplier,
                  ),
                ),
              ],
            ),
            AppThemePapswap().freeboxh(1.5 * heightMultiplier),
            Padding(
              padding: EdgeInsets.all(5),
              // child: Card(
              //   elevation: 20,
              child: Container(
                padding: EdgeInsets.only(
                  left: 7.634 * widthMultiplier,
                  right: 7.634 * widthMultiplier,
                  // top: 2.634 * heightMultiplier,
                  bottom: 2.634 * heightMultiplier,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 248, 243, 243),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      !isLogin
                          ? TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(58, 202, 202, 202),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0.06 * heightMultiplier,
                                      color: Colors.white),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0.06 * heightMultiplier,
                                      color: Colors.white),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 1.41 * heightMultiplier,
                                    horizontal: 3.1 * widthMultiplier),
                                hintText: 'Enter username',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 142, 138, 138),
                                  fontSize: 1.8 * textMultiplier,
                                ),
                              ),
                              key: const ValueKey('username'),
                              validator: (value) {
                                if (value.toString().isEmpty) {
                                  return 'username should not be empty';
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (value) {
                                _username = value.toString().trim();
                              },
                            )
                          : Container(),
                      AppThemePapswap().freeboxh(0.6 * heightMultiplier),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(58, 202, 202, 202),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.06 * heightMultiplier,
                                color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.06 * heightMultiplier,
                                color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 142, 138, 138),
                            fontSize: 1.8 * textMultiplier,
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
                      AppThemePapswap().freeboxh(.6 * heightMultiplier),
                      TextFormField(
                        obscureText: _isHidden,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          filled: true,

                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                alignment: Alignment.centerRight,
                                // onTap: _togglePasswordView,
                                child: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(Icons.visibility))),
                          ),
                          fillColor: Color.fromARGB(58, 202, 202, 202),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.06 * heightMultiplier,
                                color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.06 * heightMultiplier,
                                color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // alignLabelWithHint: true,
                          // labelText: 'Enter Password',
                          hintText: 'Enter Password',

                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 142, 138, 138),
                            fontSize: 1.8 * textMultiplier,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1.41 * heightMultiplier,
                              horizontal: 3.1 * widthMultiplier),
                        ),
                        key: const ValueKey('password'),
                        validator: (value) {
                          if (value.toString().length <= 5) {
                            return 'Minimum length of password should be 5';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          _password = value.toString().trim();
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          isLogin
                              ? TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ForgotPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 1.59 * textMultiplier,
                                    ),
                                  ),
                                )
                              : AppThemePapswap()
                                  .freeboxh(0.5 * heightMultiplier),
                        ],
                      ),
                      AppThemePapswap().freeboxh(1.41 * heightMultiplier),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: screenWidth,
                        height: 6 * heightMultiplier,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: ElevatedButton(
                          onPressed: () async {
                            await startAuthentication();
                            var snack = SnackBar(
                              behavior: SnackBarBehavior.floating,
                              duration: const Duration(seconds: 1),
                              content: Text(
                                error,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  // color: Colors.black,
                                ),
                              ),
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            );
                            if (error.isNotEmpty) {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(snack);
                              error = '';
                            }
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
                          child: isLogin
                              ? flag
                                  ? const Center(
                                      child: CustomProgressIndicator(),
                                    )
                                  : isClickedForAuth
                                      ? const Center(
                                          child: CustomProgressIndicator(),
                                        )
                                      : Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 1.65 * textMultiplier,
                                          ),
                                        )
                              : flag
                                  ? const Center(
                                      child: CustomProgressIndicator(),
                                    )
                                  : isClickedForAuth
                                      ? const Center(
                                          child: CustomProgressIndicator(),
                                        )
                                      : Text(
                                          "Signup",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 1.65 * textMultiplier,
                                          ),
                                        ),
                        ),
                      ),
                      AppThemePapswap().freeboxh(1 * heightMultiplier),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 0.06 * heightMultiplier,
                            width: 29.62 * widthMultiplier,
                            // padding: EdgeInsets.only(left: 15),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 102, 92, 92),
                            ),
                          ),
                          Text(
                            '   OR   ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 102, 92, 92),
                              fontSize: 1.41 * textMultiplier,
                            ),
                          ),
                          Container(
                            height: 0.06 * heightMultiplier,
                            width: 29.62 * widthMultiplier,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 102, 92, 92),
                            ),
                          ),
                        ],
                      ),
                      AppThemePapswap().freeboxh(1.5 * heightMultiplier),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: screenWidth,
                        height: 6 * heightMultiplier,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        margin: const EdgeInsets.symmetric(vertical: 0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isClickedForgoogleAuth = true;
                            });
                            signingoogle();
                          },
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(2),
                            shadowColor: MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                horizontal: 3.7 * widthMultiplier,
                                // top: 0.5 * heightMultiplier,
                                vertical: 0.5 * heightMultiplier,
                                // right: 3.7 * widthMultiplier,
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 12, 125, 217),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 1.9 * heightMultiplier,
                                    child: CircleAvatar(
                                      radius: 1.41 * heightMultiplier,
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage('assets/google2.png'),
                                    ),
                                  ),
                                  AppThemePapswap()
                                      .freeboxw(4 * widthMultiplier),
                                  isClickedForgoogleAuth
                                      ? Center(
                                          child: CustomProgressIndicator(),
                                        )
                                      : Text(
                                          'Continue with Google',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 1.65 * textMultiplier,
                                          ),
                                        ),
                                ],
                              ),
                              // AppThemePapswap().freeboxw(10 * widthMultiplier),
                            ],
                          ),
                        ),
                      ),
                      AppThemePapswap().freeboxh(2.94 * heightMultiplier),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                        child: isLogin
                            ? Text(
                                "Don't have an account? Signup",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 1.59 * textMultiplier,
                                ),
                              )
                            : Text(
                                'Already Signed Up? Login',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 1.59 * textMultiplier,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              // ),
            )
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 70);
    // path.lineTo(size.width, size.height);

    path.quadraticBezierTo(
        size.width * 0.5, size.height + 20, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) => false;
}
