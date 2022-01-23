import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: idcard()
  ));
}


// class idcard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.grey[900],
    //   appBar: AppBar(
    //
    //     title: Text(
    //       'Only-Fans Membership Account',
    //       style: TextStyle(
    //         color:Colors.grey[300]
    //       ),
    //     ),
    //     centerTitle: true,
    //     backgroundColor: Colors.grey[800],
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.fromLTRB(20, 40, 30, 0),
    //
    //     child: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: <Widget> [
    //           CircleAvatar(
    //             backgroundImage: AssetImage('assets/img.png'),
    //             radius:50,
    //           ),
    //
    //           Divider(
    //             height: 60,
    //             color: Colors.grey[600],
    //           ),
    //
    //           Row(
    //             children: [
    //               Text(
    //                   'Name:',
    //                 style:TextStyle(
    //                   fontSize: 20.0,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.grey[400],
    //                   letterSpacing: 2.0,
    //                 ),
    //               ),
    //
    //               SizedBox(width:10),
    //
    //               Text(
    //                 'Smit Sekhadia',
    //                 style: TextStyle(
    //
    //                   fontSize: 25.0,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.grey[500],
    //                   letterSpacing: 2.0,
    //                 ),
    //               ),
    //             ],
    //           ),
    //
    //           SizedBox(height:20.0),
    //
    //           Row(
    //             children: [
    //               Text(
    //                 'Package:',
    //                 style:TextStyle(
    //                   fontSize: 20.0,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.grey[400],
    //                   letterSpacing: 2.0,
    //                 ),
    //               ),
    //
    //               SizedBox(width:10),
    //
    //               Text(
    //                 'Premium',
    //                 style: TextStyle(
    //                   fontSize: 25.0,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.grey[500],
    //                   letterSpacing: 2.0,
    //                 ),
    //               ),
    //             ],
    //           ),
    //
    //           SizedBox(height:20),
    //
    //           Row(
    //             children: [
    //               Icon(
    //                 Icons.email_rounded,
    //                 color:Colors.grey[400]
    //               ),
    //
    //               SizedBox(width:10),
    //
    //               Text(
    //                 'smitsekhadia99@gmail.com',
    //                 style: TextStyle(
    //
    //                   fontSize: 20.0,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.grey[500],
    //                   letterSpacing: 2.0,
    //                 ),
    //               ),
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  // }

// }

class idcard extends StatefulWidget {
  // const idcard({Key? key}) : super(key: key);
  @override
  _idcardState createState() => _idcardState();
}

class _idcardState extends State<idcard> {

  int membershiplevel=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(

        title: Text(
          'Only-Fans Membership Account',
          style: TextStyle(
              color:Colors.grey[300]
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {  //setState increases the value everytime and updates the state too so you get the updated value, or else you will always get 0
            membershiplevel+=1;
          });
        },
        backgroundColor: Colors.amberAccent,
        child: Icon(
          Icons.add,
          color: Colors.grey[900],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 30, 0),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              CircleAvatar(
                backgroundImage: AssetImage('assets/img.png'),
                radius:50,
              ),

              Divider(
                height: 60,
                color: Colors.grey[600],
              ),

              Row(
                children: [
                  Text(
                    'Name:',
                    style:TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width:10),

                  Text(
                    'Smit Sekhadia',
                    style: TextStyle(

                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),

              SizedBox(height:20.0),

              Row(
                children: [
                  Text(
                    'Package:',
                    style:TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width:10),

                  Text(
                    '$membershiplevel',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),

              SizedBox(height:20),

              Row(
                children: [
                  Icon(
                      Icons.email_rounded,
                      color:Colors.grey[400]
                  ),

                  SizedBox(width:10),

                  Text(
                    'smitsekhadia99@gmail.com',
                    style: TextStyle(

                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




