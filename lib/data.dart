import 'dart:convert';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart';

class ImageData {
  String neck = "";
  String height = "";
  String weight = "";
  String belly = "";
  String chest = "";
  String wrist = "";
  String armLength = "";
  String thigh = "";
  String shoulder = "";
  String hips = "";
  String ankle = "";


  var url;
  Future downloadImage() async{
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child('Image.jpg');
    url = await ref.getDownloadURL();
  }

  Future<void> getData() async{
    try{
      Response response = await post(Uri.parse('https://backend-test-zypher.herokuapp.com/uploadImageforMeasurement'),body: {
        "imageURL" : downloadImage().toString()
      });
      Map data = jsonDecode(response.body);

      neck = data['d']['neck'].toString();
      height = data['d']['height'].toString();
      weight = data['d']['weight'].toString();
      belly = data['d']['belly'].toString();
      chest = data['d']['chest'].toString();
      wrist = data['d']['wrist'].toString();
      armLength = data['d']['armLength'].toString();
      thigh = data['d']['thigh'].toString();
      shoulder = data['d']['shoulder'].toString();
      hips = data['d']['hips'].toString();
      ankle = data['d']['ankle'].toString();

    }
    catch(e){
      print(e.toString());
    }
  }
}