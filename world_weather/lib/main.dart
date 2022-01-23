import 'package:flutter/material.dart';
import 'package:world_weather/choose_location.dart';
import 'package:world_weather/home.dart';
import 'loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/home':(context)=> Home(),
      '/choose_location':(context)=> choose_location(),
      '/loading':(context)=> loading(),

    },
  ));

}

