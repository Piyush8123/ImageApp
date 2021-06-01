import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Upload extends StatefulWidget {
  const Upload({key}) : super(key: key);

  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  var sample;
  var url;

  Future getImage() async{
    final temp = await ImagePicker().getImage(source: ImageSource.camera);
    if(mounted)
      {
        setState(() {
          sample = File(temp!.path);
        });
        upload();
        navigate();
      }
  }

  Future upload() async{
    if(sample == null) return;
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child('Image.jpg');
    UploadTask task = ref.putFile(sample);
  }
  Future navigate() async{
    await Navigator.pushReplacementNamed(context, '/load');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
            child: RaisedButton(
              onPressed: getImage,
              child: Text(
                'Upload Image',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue[600],
            ),
          ),
      );
  }
}





