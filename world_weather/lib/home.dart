import 'package:flutter/material.dart';
import 'package:world_weather/choose_location.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,


      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(

              children: <Widget>[
                ElevatedButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/choose_location');

                },
                    icon: Icon(Icons.edit_location_outlined),
                    label: Text(
                      'Choose a Location',
                       style: TextStyle(
                         letterSpacing: 2.0,
                      ),
                    ),
                ),
                SizedBox(height: 20),
                Text(
                  'City Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
