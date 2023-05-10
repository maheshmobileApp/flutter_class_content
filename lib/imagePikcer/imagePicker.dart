import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({super.key});

  @override
  State<ImagePickerClass> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePickerClass> {
  XFile? selectImageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Selection")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            selectImageFile != null
                ? Image.file(File(selectImageFile?.path ?? ""))
                : SizedBox(),
            TextButton(
                onPressed: () {
                  pickTheImage();
                },
                child: Text("Pick Image"))
          ]),
    );
  }

  pickTheImage() async {
    final ImagePicker picker = ImagePicker();
    final file = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      selectImageFile = file;
    });
  }
}

/*

1. install the image picker package https://pub.dev/packages/image_picker
2. configure the iOS releated permission in info.plist (iOS->Runner->info.plist)
3. configure the Android related permission in AndroidManifest.xml (android->src->main->AndroidManifest.xml)
4. in button action call the image picker for pick the image based on source (source are two types camera,gallery). for now i have chose the image from gallery
5. Get the file from galarry and display in the image
 */