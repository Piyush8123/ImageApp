import 'package:flutter/material.dart';
import 'package:task/upload.dart';
import 'package:task/image.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task/loading.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => Upload(),
      '/load' : (context) => Loading(),
      '/image' : (context) => GetImg(),
    },
  ));
}
