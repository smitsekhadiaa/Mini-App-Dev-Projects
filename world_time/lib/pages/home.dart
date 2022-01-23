import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data={};

  @override
  Widget build(BuildContext context) {
    //receiving arguments sent from loading.dart that is location time and flag

    data= data.isNotEmpty?data:ModalRoute.of(context)?.settings.arguments as Map;
    print(data);



    //set background
    String bgImage=data['isDayTime']?'day.png':'night.png';
    Color bgColor= data['isDayTime'] ? Colors.green[100]!:Colors.blue[800]!;
    return Scaffold(
      backgroundColor: bgColor,
      // body: SafeArea(child: Text("homescreen"))// safe area moves the child to a safearea where we can see it; first it was being blocked by the top time of the phone of notifications
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              image:AssetImage('assets/$bgImage'),
              fit:BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
            child: Column(
              children : <Widget> [
                ElevatedButton.icon(
                    onPressed: () async{
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data= {
                        'time':result['time'],
                        'location':result['location'],
                        'flag': result['flag'],
                        'isDayTime': result['isDayTime'],
                      };
                    });
                },
                    icon: Icon(Icons.edit_location_outlined),
                    label: Text('Change Location')),
                SizedBox(height:20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      data['location'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20.0),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
