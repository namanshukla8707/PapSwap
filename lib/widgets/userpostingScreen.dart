// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_import, prefer_typing_uninitialized_variables, unused_import, non_constant_identifier_names, use_build_context_synchronously, avoid_print, unused_local_variable
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:papswap/widgets/reswap_data.dart';
import 'package:permission_handler/permission_handler.dart';

class UserPostScreen extends StatefulWidget {
  final link;
  final category;
  final posttext;
  final reswps;
  final uid;
  final postid;

  const UserPostScreen(
      {Key? key,
      required this.link,
      required this.category,
      required this.postid,
      required this.posttext,
      required this.reswps,
      required this.uid})
      : super(key: key);

  @override
  State<UserPostScreen> createState() => _UserPostScreenState();
}

class _UserPostScreenState extends State<UserPostScreen> {
  String SelectedfilePath = '';
  String filepath = '';
  TextEditingController controller = TextEditingController();
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
    print(widget.link);
    print('69');
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.all(0),
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                      ),
                    ),
                    SizedBox(
                      width: 56.0224 * widthMultiplier,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: () async {
                        await reswapData(
                            filepath: filepath,
                            text: controller.text,
                            image: widget.link,
                            category: widget.category,
                            posttext: widget.posttext,
                            reswaps: widget.reswps,
                            uid: widget.uid,
                            postId: widget.postid);
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: [
                          Text('Reswap'),
                          SizedBox(
                            width: 1.02 * widthMultiplier,
                          ),
                          Icon(Icons.swap_horiz),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 7.64 * widthMultiplier,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 5.093 * widthMultiplier,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/finallogo.PNG'),
                  ),
                  SizedBox(
                    width: 5.093 * widthMultiplier,
                  ),
                  Text(
                    'Posting as ',
                    style: TextStyle(fontSize: 1.880141 * textMultiplier),
                  ),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 2.3502 * textMultiplier,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 4.584 * widthMultiplier,
                  ),
                  Container(
                    padding: EdgeInsets.all(0),
                    width: 7.64 * widthMultiplier,
                    child: IconButton(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(0),
                      onPressed: () async {
                        print('hell');
                        PermissionStatus StorageStatus =
                            await Permission.storage.request();
                        print('heelo');
                        if (StorageStatus == PermissionStatus.granted) {
                          SelectedfilePath = await selectImageFromGallery();

                          print('Image_Path:-');
                          print(SelectedfilePath);
                          if (SelectedfilePath != '') {
                            // Navigator.pop(context);
                            setState(() {
                              filepath = SelectedfilePath;
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("No Image Selected !"),
                            ));
                          }
                        }
                        if (StorageStatus == PermissionStatus.denied) {
                          print('permission denied');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("This Permission is recommended."),
                            ),
                          );
                        }
                        if (StorageStatus ==
                            PermissionStatus.permanentlyDenied) {
                          openAppSettings();
                        }
                      },
                      icon: Icon(
                        Icons.image_search,
                        size: 26,
                        color: Colors.indigo.shade900,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.35 * heightMultiplier,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                // color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 5.1 * widthMultiplier, vertical: 0),
                  child: TextField(
                    minLines: 1,
                    maxLines: 1000,
                    // maxLines: 100,
                    // maxLength: 1000,
                    controller: controller,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.emailAddress,
                    cursorHeight: 2.5852 * heightMultiplier,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write your Opinion",
                      hintStyle: TextStyle(
                        fontSize: 2.12 * textMultiplier,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.3502 * heightMultiplier,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.1 * widthMultiplier),
                child: SelectedfilePath == ''
                    ? SizedBox(height: 0)
                    : Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                // color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // height: 400,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: FileImage(
                                    File(SelectedfilePath),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.3502 * heightMultiplier,
                          ),
                        ],
                      ),
              ),
              // Padding(
              //   padding:
              //       EdgeInsets.symmetric(horizontal: 5.1 * widthMultiplier),
              //   child: Card(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(20)),
              //     elevation: 6,
              //     child: Container(
              //       padding: EdgeInsets.all(0),
              //       decoration: BoxDecoration(
              //         // color: Colors.green,
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //       // height: 47.004 * heightMultiplier,
              //       width: MediaQuery.of(context).size.width,
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(20),
              //         child: Image(
              //           image: NetworkImage(
              //             widget.link,
              //           ),
              //           // color: Colors.blue,
              //           fit: BoxFit.fill,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

selectImageFromGallery() async {
  XFile? file = await ImagePicker()
      .pickImage(source: ImageSource.gallery, imageQuality: 100);
  if (file != null) {
    return file.path;
  } else {
    return '';
  }
}

selectImageFromCamera() async {
  XFile? file = await ImagePicker()
      .pickImage(source: ImageSource.camera, imageQuality: 100);
  if (file != null) {
    return file.path;
  } else {
    return '';
  }
}
