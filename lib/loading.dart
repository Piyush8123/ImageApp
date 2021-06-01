import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String nk = "";
  String ht = "";
  String wt = "";
  String by = "";
  String ct = "";
  String wst = "";
  String al = "";
  String tg = "";
  String sh = "";
  String hs = "";
  String ak = "";
  @override
  Widget build(BuildContext context) {

    void setData() async{
      ImageData img = new ImageData();
      await img.getData();

      nk = img.neck;
      ht = img.height;
      wt = img.weight;
      by = img.belly;
      ct = img.chest;
      wst = img.wrist;
      al = img.armLength;
      tg = img.thigh;
      sh = img.shoulder;
      hs = img.hips;
      ak = img.ankle;
      Navigator.pushReplacementNamed(context, '/image',arguments: {

          'neck' : nk,
          'height' : ht,
          'weight' : wt,
          'belly' : by,
          'chest' : ct,
          'wrist' : wst,
          'armLength' : al,
          'thigh' : tg,
          'shoulder' : sh,
          'hips' : hs,
          'ankle' : ak,
        });
    }
    setData();

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(50.0, 320.0, 50.0, 0.0),
            child: SpinKitFadingCircle(
              color: Colors.white,
              size: 80.0,
            ),
          ),
          SizedBox(height: 20.0,),
          Text(
            'Loading...',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
