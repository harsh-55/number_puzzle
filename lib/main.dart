import 'dart:io';
import 'dart:math';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:neon/neon.dart';
import 'package:number_puzzle/secondpage.dart';
import 'package:number_puzzle/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    title: "Number Puzzle",
    debugShowCheckedModeBanner: false,
    home: splashscreen(),
  ));
}

class Numpuzzle extends StatefulWidget {
  @override
  State<Numpuzzle> createState() => _NumpuzzleState();
}

class _NumpuzzleState extends State<Numpuzzle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
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
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            SizedBox(
              height: theight * 0.16,
            ),
            Container(
              height: theight * 0.3,
              width: twidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "Image/Screenshot_2023-01-29_212712-removebg-preview.png"),
                  )),
            ),
            SizedBox(
              height: theight * 0.12,
            ),
            AnimatedButton(
                width: twidth * 0.48,
                height: theight * 0.08,
                color: Color(0xFFD18A46),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return secpage();
                  },));
                },
                child: Neon(
                  text: "New Game",
                  color: Colors.grey,
                  font: NeonFont.NightClub70s,
                  fontSize: theight * 0.032,

                )
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    ), onWillPop: () {
      return showExitPopup(context);
    },);
  }

  Future<bool> showExitPopup(context) async {
    return await showDialog(
      context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white.withOpacity(0.95),
        content: Container(
          height: 190,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 95,
                  width: 98,
                  child: Lottie.asset("Animation/113312-pleading-face-emoji.json",fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  "Do you want to leave?",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
              Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: () {
                    print('Yes selected');
                    exit(0);
                  }, child: Text("Yes"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red.shade800),
                  ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(child: ElevatedButton(onPressed: () {
                    print('Yes selected');

                    Navigator.of(context).pop();
                  },
                    child: Text('No', style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green),))
                ],
              )
            ],
          ),
        ),
      );
    },);
  }

}
