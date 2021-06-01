import 'package:flutter/material.dart';

class GetImg extends StatefulWidget {
  const GetImg({key}) : super(key: key);

  @override
  _GetImgState createState() => _GetImgState();
}

class _GetImgState extends State<GetImg> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 60.0,
                  vertical: 40.0,),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Text(
                    'Take Measurements Again',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  color: Colors.blue[600],
                ),
              ),
              ListTile(
                leading: Text(
                  'Neck',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['neck'],
                ),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Height',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['height'],
                ),
              ),SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Weight',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['weight'],
                ),
              ),SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Belly',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['belly'],
                ),
              ),SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Chest',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['chest'],
                ),
              ),SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Wrist',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['wrist'],
                ),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'ArmLength',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['armLength'],
                ),
              ),SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Thigh',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['thigh'],
                ),
              ),SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Shoulder',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['shoulder'],
                ),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Hips',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['hips'],
                ),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                leading: Text(
                  'Ankle',
                ),
                tileColor: Colors.grey[200],
                trailing: Text(
                  data['ankle'],
                ),
              ),
            ]
          ),
      ),
      );
  }
}


