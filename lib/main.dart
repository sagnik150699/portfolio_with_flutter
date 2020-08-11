import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
//  final customColor = Colors.teal;
//  List<final> customColor = List<String>(3);
 int number=0;
 int note=1;
  final List<Color> customColor=[Colors.teal,Colors.red,Colors.yellow,Colors.blue,Colors.orange,Colors.green,Colors.purple,Colors.pink,Colors.brown,Colors.black,Colors.indigo];
  @override
    Widget build(BuildContext context) {
    void Play(int a) {
      final player = AudioCache();
      player.play('note$a.wav');
    }
    int checksound(int a){
      if(a==8){
        a=1;
      }
      return a;
    }


    return MaterialApp(
      home: Scaffold(
        backgroundColor: customColor[number],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InteractiveViewer(
                boundaryMargin: EdgeInsets.all(200.0),
                child: FlatButton(
                  onPressed: (){
                    print(number);
                    setState(() {
                      number=Random().nextInt(11);
                      note=checksound(note);
                      Play(note);
                      note++;

                    });
                  },
                  child: CircleAvatar(
                    //backgroundColor: Colors.red,
                    backgroundImage: AssetImage('images/profile.jpg'),
                    radius: 60.0,
                  ),
                ),
              ),
              InteractiveViewer(
               boundaryMargin: EdgeInsets.all(200.0),
//                minScale: 0.1,
//                maxScale: 1.6,
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),

                  onPressed: (){
                   print(number);
                   setState(() {
                     number=Random().nextInt(11);
                     note=checksound(note);
                     Play(note);
                     note++;

                   });
                  },
                  child: Text('Sagnik_Bhattacharya',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 30.0,
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              InteractiveViewer(
                boundaryMargin: EdgeInsets.all(200.0),
                child: Text('FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      color: Colors.teal[100],
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              InteractiveViewer(
                boundaryMargin: EdgeInsets.all(200.0),
                child: FlatButton(
                  onPressed: () {
                    print(number);
                     setState(() {number=Random().nextInt(11);
                     note=checksound(note);
                     Play(note);
                     note++;
                     });
                    },

                  child: Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      color: Colors.white,
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal.shade900,
                        ),
                        title: Text(
                          '+91 9804 044 741',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.teal.shade800,
                          ),
                        ),
                      )),
                ),
              ),
              InteractiveViewer(
                boundaryMargin: EdgeInsets.all(200.0),
                child: FlatButton(
                  onPressed: () {
                    print(number);
                    setState(() {number=Random().nextInt(11);
                    note=checksound(note);
                    Play(note);
                    note++;
                    });
                  },
                  child: Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      color: Colors.white,
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal.shade900,
                        ),
                        title: Text(
                          'sagnik@codingliquids.com',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.teal.shade800,
                          ),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
