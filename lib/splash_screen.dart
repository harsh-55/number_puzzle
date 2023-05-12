import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:number_puzzle/main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Numpuzzle();
        },
      ));
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double twidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
            Lottie.asset("Animation/fJ1bVfKqfF.json"),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
