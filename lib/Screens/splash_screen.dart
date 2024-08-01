import 'package:flutter/material.dart';
import 'package:planet_app/Screens/login.dart';
import 'package:planet_app/util/util.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          height = constraints.maxHeight;
          width = constraints.maxWidth;
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'Assets/image 10.png',
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'Assets/circle.png',
                    width: width * 0.5,
                    height: width * 0.5,
                  ),
                  SizedBox(
                    height: height * 0.12,
                  ),
                  Text(
                    'PLANET APP',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: width * 0.12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
