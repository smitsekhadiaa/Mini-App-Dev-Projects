import 'package:flutter/material.dart';

class choose_location extends StatelessWidget {
  const choose_location({Key? key}) : super(key: key);

  void world_weather(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Choose a Location'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}
