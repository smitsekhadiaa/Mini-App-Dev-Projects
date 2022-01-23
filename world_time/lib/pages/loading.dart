import 'dart:convert';
import 'package:world_time/services/world_time.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time='loading';

  void setupWorldTime() async {
    WorldTime instance=WorldTime(location:'Toronto',flag:'canada.png', url:'America/Toronto');
    await instance.getTime();
    // setState(() {
    //   time=instance.time;
    // });
    Navigator.pushReplacementNamed(context, '/home', arguments:{
      'location': instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDayTime': instance.isDayTime,

    });


  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.blue[800],
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
