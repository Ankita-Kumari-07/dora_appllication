import 'package:doraapplication/SecondPage.dart';
//import 'package:doraapplication/correctans.dart';
//import 'package:doraapplication/createalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int flag=0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 700,
                height: 80,
                color: Colors.redAccent,
                child: RaisedButton(
                  onPressed: null,
                  child: Text("Q1. What was the name of Dora's monkey friend ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      )),
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 50,
                      color: Colors.red,
                      child:Builder(
                       builder: (context){   return RaisedButton(
                         child: Text(
                           " (a)  Minni",
                           style: TextStyle(
                             color: Colors.orangeAccent,
                             fontWeight: FontWeight.bold,
                             fontSize: 25,
                           ),
                         ),
                         onPressed: () {
                           flag=flag+1;
                           createAlert1(context);
                           //widget.gameObject.score = widget.gameObject.score + 30;
                         },
                       );
                       },
                      ),

                    ),
                    Container(
                      width: 250,
                      height: 50,
                      color: Colors.orange,
                      child:Builder(
                        builder: (context){
                          return RaisedButton(
                            onPressed: () {
                              flag=flag+1;
                              createAlert(context);
                             /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => correctans(
                                      /*gameObject: widget.gameObject,
                                    auth: widget.auth)),*/
                                    )
                                ),);*/
                              // widget.gameObject.wrongAttempts =
                              //   widget.gameObject.wrongAttempts + 1;
                              //widget.gameObject.score = widget.gameObject.score - 10;
                            },
                            child: Text(
                              "(b)  Bunny",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          );
                        }
                        ,
                      )
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 250,
                      height: 50,
                      child:Builder(builder: (context){
                        return RaisedButton(
                          onPressed: () {
                            flag=flag+1;
                            createAlert(context);
                            //Navigator.push(
                              //context,
                              //MaterialPageRoute(
                                //  builder: (context) => correctans(
                                    /*gameObject: widget.gameObject,
                                    auth: widget.auth)),*/
                                  //)
                             // ),);
                            //widget.gameObject.wrongAttempts =
                            //  widget.gameObject.wrongAttempts + 1;
                            //widget.gameObject.score = widget.gameObject.score - 10;
                          },
                          child: Text(
                            "(c)  Olive",
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      })
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      color: Colors.lightGreenAccent,
                      child: Builder(builder:(context){
                        return RaisedButton(
                          onPressed: () {
                            flag=flag+1;
                            createAlert(context);
                           /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => correctans(
                                    /*gameObject: widget.gameObject,
                                    auth: widget.auth)),*/
                                  )
                              ),);*/
                            // widget.gameObject.wrongAttempts =
                            //   widget.gameObject.wrongAttempts + 1;
                            //widget.gameObject.score = widget.gameObject.score - 10;
                          },
                          child: Text(
                            "(d)  Henry",
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        );

                      }) ,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 260),
                      color: Colors.lightBlueAccent,
                      width: 100,
                      height: 30,
                      child: RaisedButton(
                        onPressed: () {
                        /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlayHintVideo()),
                          );*/
                        },
                        child: Text(
                          "HINT",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      color: Colors.lightBlueAccent,
                      child:Builder(builder: (context){
                        return RaisedButton(
                          onPressed: () {
                            if(flag >= 1)
                            { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                    /*gameObject: widget.gameObject,
                                    auth: widget.auth)),*/
                                  )
                              ),);
                            }
                            else
                            {
                              createAlert3(context);
                            }

                          },
                          child: Text(
                            "NEXT",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        );
                      })
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void createAlert(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text(
      "OOPS wrong answer!\n For hint Click on HINT button and for next Question click on NEXT",
      style: TextStyle(
        color: Colors.red,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}

void createAlert1(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text(
      "WELL DONE!\n Click on the NEXT button",
      style: TextStyle(
        color: Colors.green,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}

void createAlert3(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text(
      "Please attempt the Question! atleast once",
      style: TextStyle(
        color: Colors.green,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },

  );
}