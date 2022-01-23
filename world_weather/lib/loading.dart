import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:world_weather/world_weather.dart';
class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

  void getWeather () async{
    WorldWeather instance = WorldWeather

  }



  @override
  void initState(){
    super.initState();
    getWeather();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}
