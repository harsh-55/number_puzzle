import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

import 'main.dart';

class secpage extends StatefulWidget {
  const secpage({Key? key}) : super(key: key);

  @override
  State<secpage> createState() => _secpageState();
}

class _secpageState extends State<secpage> {
  List hh = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // hh.shuffle();
    Randommm();
    print("$hh");
  }

  @override
  Widget build(BuildContext context) {

    double theight = MediaQuery.of(context).size.height;
    double twidth = MediaQuery.of(context).size.width;

    return WillPopScope(child: Scaffold(
      body: Container(
        height: theight,
        width: twidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Image/6ba3d9a0cf24aa57858b9f288f1ae27a.jpg"),
                fit: BoxFit.fill
            )
        ),
        child: Column(
          children: [
            SizedBox(height: theight * 0.02),
            Container (
              height: theight * 0.075,
              width: twidth * 0.95,
              decoration: BoxDecoration(
                  color: Colors.brown[900],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return Numpuzzle();
                      },));
                    },
                    icon: Icon(Icons.arrow_circle_left),
                    color: Colors.white.withOpacity(0.7),
                    iconSize: theight * 0.042,
                  ),
                  Neon(
                    text: "Number Puzzle",
                    color: Colors.grey,
                    font: NeonFont.NightClub70s,
                    fontSize: theight * 0.035,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Randommm();
                      });
                    },
                    icon: Icon(Icons.change_circle_rounded),
                    color: Colors.white.withOpacity(0.7),
                    iconSize: theight * 0.042,
                  ),
                ],
              ),
            ),
            SizedBox(height: theight * 0.15),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.6), borderRadius: BorderRadius.circular(15)),
                height: theight * 0.46,
                width: twidth * 0.95,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.brown[800],
                      border: Border.all(color: Colors.brown,width: 1),
                      boxShadow: [
                        BoxShadow(blurRadius: 5, spreadRadius: 5)
                      ]),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[1] == "") {
                                  hh[1] = hh[0];
                                  hh[0] = "";
                                } else if (hh[3] == "") {
                                  hh[3] = hh[0];
                                  hh[0] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                              child: Center(
                                  child:
                                  Text("${hh[0]}", //1
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[0] == "") {
                                  hh[0] = hh[1];
                                  hh[1] = "";
                                } else if (hh[2] == "") {
                                  hh[2] = hh[1];
                                  hh[1] = "";
                                } else if (hh[4] == "") {
                                  hh[4] = hh[1];
                                  hh[1] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[1]}", //2
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[1] == "") {
                                  hh[1] = hh[2];
                                  hh[2] = "";
                                } else if (hh[5] == "") {
                                  hh[5] = hh[2];
                                  hh[2] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[2]}",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[0] == "") {
                                  hh[0] = hh[3];
                                  hh[3] = "";
                                } else if (hh[4] == "") {
                                  hh[4] = hh[3];
                                  hh[3] = "";
                                } else if (hh[6] == "") {
                                  hh[6] = hh[3];
                                  hh[3] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[3]}",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[1] == "") {
                                  hh[1] = hh[4];
                                  hh[4] = "";
                                } else if (hh[3] == "") {
                                  hh[3] = hh[4];
                                  hh[4] = "";
                                } else if (hh[5] == "") {
                                  hh[5] = hh[4];
                                  hh[4] = "";
                                } else if (hh[7] == "") {
                                  hh[7] = hh[4];
                                  hh[4] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[4]}",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[2] == "") {
                                  hh[2] = hh[5];
                                  hh[5] = "";
                                } else if (hh[4] == "") {
                                  hh[4] = hh[5];
                                  hh[5] = "";
                                } else if (hh[8] == "") {
                                  hh[8] = hh[5];
                                  hh[5] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[5]}",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[3] == "") {
                                  hh[3] = hh[6];
                                  hh[6] = "";
                                } else if (hh[7] == "") {
                                  hh[7] = hh[6];
                                  hh[6] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[6]}",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[4] == "") {
                                  hh[4] = hh[7];
                                  hh[7] = "";
                                } else if (hh[6] == "") {
                                  hh[6] = hh[7];
                                  hh[7] = "";
                                } else if (hh[8] == "") {
                                  hh[8] = hh[7];
                                  hh[7] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[7]}",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (hh[5] == "") {
                                  hh[5] = hh[8];
                                  hh[8] = "";
                                } else if (hh[7] == "") {
                                  hh[7] = hh[8];
                                  hh[8] = "";
                                }
                                win();
                              });
                            },
                            child: Container(
                              height: theight * 0.135,
                              width: twidth * 0.28,
                              child: Center(
                                  child: Text("${hh[8]}",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.brown[200]))),
                              decoration: BoxDecoration(
                                  color: Colors.brown[400],
                                  border: Border.all(
                                      color: Colors.black12, width: 2)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: theight * 0.04),
            Container(
              height: theight * 0.1,
              width: double.infinity,
              child: Center(
                  child: Text(
                    "$a",
                    style: TextStyle(
                        fontSize: (30),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.orange[100]),
                  )),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    ), onWillPop: () {
      return backscreen();
    },);
  }

  Future<bool> backscreen() async {


    AwesomeDialog(
      context: context,
      dialogType: DialogType.INFO_REVERSED,
      borderSide: const BorderSide(
        color: Colors.green,
        width: 2,
      ),
      width: 300,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      headerAnimationLoop: false,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Exit Main Page',
      desc: 'Are You Sure Main Page',
      showCloseIcon: true,
      btnCancelOnPress: () {

      },
      btnOkOnPress: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return Numpuzzle();
        },));
      },
    ).show();
    return Future.value(true);
  }

  String a = "";
  win() {
    if (hh[0] == "1" &&
        hh[1] == "2" &&
        hh[2] == "3" &&
        hh[3] == "4" &&
        hh[4] == "5" &&
        hh[5] == "6" &&
        hh[6] == "7" &&
        hh[7] == "8" &&
        hh[8] == "") {
      a = "You Are Win";
    } else {
      a = "";
    }
  }
  void Randommm() {
    hh = List.filled(9, "");
    for (int i = 0; i < 9; i++) {
      while (true) {
        int r = Random().nextInt(9);
        if (!hh.contains("$r")) {
          hh[i] = "$r";
          break;
        }
      }
    }
    for (int i = 0; i < 9; i++) {
      if (hh[i] == "0") {
        hh[i] = "";
        break;
      }
    }
  }
}
