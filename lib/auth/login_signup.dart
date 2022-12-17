import 'package:flutter/material.dart';
import 'package:papswap/auth/authprocess.dart';
import 'package:papswap/auth/forget_pass.dart';
import 'package:papswap/auth/withgoogle.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

String error = 'vipul';

class _AuthFormState extends State<AuthForm> {
  var _username = '';
  var _email = '';
  var _password = '';
  List<dynamic> list = [];
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;
  bool isClickedForAuth = false;
  bool isClickedForgoogleAuth = false;
  bool flag = false;
  String error = '';
    startAuthentication() async {
    setState(() {
      isClickedForAuth = true;
    });
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

  signingoogle() async{
    await googleLogin();
    setState(() {
      isClickedForgoogleAuth=false;
    }); 
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.only(
              left: 20, right: 20, top: height * 0.05, bottom: height * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: height / 7,
                  child: Image.asset(
                    'assets/finallogo.PNG',
                  )),
              SizedBox(
                height: height / 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'PAP S',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(270 / 360),
                    child: Text(
                      "W",
                      style: TextStyle(color: Colors.cyan, fontSize: 20),
                    ),
                  ),
                  Text(
                    'AP',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 1000,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'POLICIES ',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'OVER ',
                    style: TextStyle(color: Colors.cyan, fontSize: 20),
                  ),
                  Text(
                    'POLITICS',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: height / 40,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    !isLogin
                        ? TextFormField(
                            keyboardType: TextInputType.text,
                            key: const ValueKey('username'),
                            decoration: InputDecoration(
                                hintText: 'Enter username',hintStyle:const TextStyle(
                            fontSize: 18
                          ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                filled: true,
                                fillColor: Colors.grey.shade200),
                            validator: (value) {
                              if (value.toString().length < 3) {
                                return 'UserName is Not Valid';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (newValue) {
                              setState(() {
                                _username = newValue!;
                              });
                            },
                          )
                        : Container(),
                    SizedBox(
                      height: height / 90,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: const ValueKey('email'),
                      decoration: InputDecoration(
                          hintText: 'Enter Email',hintStyle:const TextStyle(
                            fontSize: 18
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200),
                      validator: (value) {
                        if (!(value.toString().contains('@'))) {
                          return 'Enter a Valid Email';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        setState(() {
                          _email = newValue!;
                        });
                      },
                    ),
                    SizedBox(
                      height: height / 90,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      key: const ValueKey('password'),
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          hintStyle:const TextStyle(
                            fontSize: 18
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200),
                      validator: (value) {
                        if (value.toString().length < 5) {
                          return 'Password is Not Valid';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        setState(() {
                          _password = newValue!;
                        });
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       (isLogin)? TextButton(
                          onPressed: () {
                            disp(context);
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ): SizedBox(height: height/50,),
                      ],
                    ),
                    SizedBox(
                      width: width / 1.1,
                      height: height / 14,
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
                        child: isLogin
                            ? flag
                                ? const CircularProgressIndicator(
                                    color: Colors.white)
                                : isClickedForAuth
                                    ? const CircularProgressIndicator(
                                        color: Colors.white)
                                    : const Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )
                            : flag
                                ? const CircularProgressIndicator(
                                    color: Colors.white)
                                : isClickedForAuth
                                    ? const CircularProgressIndicator(
                                        color: Colors.white)
                                    : const Text(
                                        "Signup",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                      ),
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 145,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          '   OR   ',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 1,
                          width: 145,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
              height: height/50,
            ),
                    Container(
              width: 330,
              height: 45,
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.all(0),
              child: ElevatedButton(
                onPressed: () {
                  signingoogle();
                },
                style: ButtonStyle(
                    // padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        left: 10, top: 6, bottom: 6, right: 7)),
                    // overlayColor: MaterialStateProperty.all(Colors.green),
                    // elevation: MaterialStateProperty.all(10),s
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 13, 125, 217))),
                        
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 34,
                      padding: const EdgeInsets.all(0),
                      margin: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/googl1.png',
                            fit: BoxFit.fill,
                          )),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                   isClickedForgoogleAuth? const CircularProgressIndicator(
                                        color: Colors.white):const Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // child: isLogin
                //     ? const Text(
                //         'Button',
                //         style: TextStyle(color: Colors.black),
                //       )
                //     : Container(),
              ),
            ),
            SizedBox(height: height/40,),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                        child: !isLogin
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  // const Text(
                                  //     'Already Signed Up? Login',
                                  //     style: TextStyle(color: Colors.red, fontSize: 15),
                                  //   ),

                                  Text(
                                    'Already Signed Up?',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Text(
                                    ' Login ',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 15),
                                  )
                                ],
                              )
                            // : const Text(
                            //     '''Dont't have an account? SignUp''',
                            //     style: TextStyle(color: Colors.red, fontSize: 15),
                            //   ),
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  // const Text(
                                  //     'Already Signed Up? Login',
                                  //     style: TextStyle(color: Colors.red, fontSize: 15),
                                  //   ),

                                  Text(
                                    '''Dont't have an account? ''',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Text(
                                    ' SignUp ',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 15),
                                  )
                                ],
                              )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
