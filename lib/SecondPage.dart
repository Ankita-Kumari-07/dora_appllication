//import 'package:doraapplication/createalert.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
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
                  child: Text("Q2. What was the name of Dora's bear friend ?",
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
                      child: RaisedButton(
                        child: Text(
                          " (a)  Minni",
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        onPressed: () {
                          //  Widget.object.wrongAttempts;
                        //  widget.gameObject.wrongAttempts =
                          //    widget.gameObject.wrongAttempts + 1;
                          //widget.gameObject.score = widget.gameObject.score - 10;
                          //createAlert(context);
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      color: Colors.orange,
                      child: RaisedButton(
                        onPressed: () {
                          //widget.gameObject.score = widget.gameObject.score + 30;
                          createAlert1(context);
                        },
                        child: Text(
                          "(b)  Bunny",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
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
                      child: RaisedButton(
                        onPressed: () {
                          //widget.gameObject.wrongAttempts =
                            //  widget.gameObject.wrongAttempts + 1;
                          //widget.gameObject.score = widget.gameObject.score - 10;
                          createAlert(context);
                        },
                        child: Text(
                          "(c)  Olive",
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      color: Colors.lightGreenAccent,
                      child: RaisedButton(
                        onPressed: () {
                          createAlert(context);
                          //widget.gameObject.wrongAttempts =
                            //  widget.gameObject.wrongAttempts + 1;
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
                      ),
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
                         /* Navigator.push(
                            context,
                            MaterialPageRoute(
                            //    builder: (context) => PlayHintVideo()),
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
                      child: RaisedButton(
                        onPressed: () {
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThirdPage(
                                  gameObject: widget.gameObject,
                                  auth: widget.auth,
                                )),
                          );*/
                        },
                        child: Text(
                          "NEXT",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
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
      "Looks like you need a hint \n click on the HINT button",
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
      "Please attempt the Question!",
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
