import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planet_app/Design_Element/back_arrow.dart';
import 'package:planet_app/util/util.dart';

class Earth_Inner_Screen extends StatefulWidget {
  const Earth_Inner_Screen({super.key});

  @override
  State<Earth_Inner_Screen> createState() => _Earth_Inner_ScreenState();
}

class _Earth_Inner_ScreenState extends State<Earth_Inner_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: height * 1,
          width: width * 1,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'Assets/Inner Page.png',
                fit: BoxFit.cover,
              ),
              //Navbar //
              Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Back_Arrow(),
                    Container(
                      width: width * 0.14,
                      height: width * 0.14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(122, 35, 29, 29),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: width * 0.08,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: height * 0.32,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text(
                              'Earth',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.08,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/icon 1.png',
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Mass',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '(10²⁴kg)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.00002,
                                  ),
                                  Text(
                                    '5.97 ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.06,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/icon 2.png',
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Gravity',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '(m/s²)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.00002,
                                  ),
                                  Text(
                                    '9.8',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.06,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/icon 3.png',
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Day',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '(hours)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.00002,
                                  ),
                                  Text(
                                    '24',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.06,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/icon 4.png',
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Esc. Velocity',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          '(km/s)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.00002,
                                  ),
                                  Text(
                                    '11.2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.06,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/icon 5.png',
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Mean',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Temp (C)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.00002,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.06,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/icon 6.png',
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Distance from',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Sun (106 km)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.04),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.00002,
                                  ),
                                  Text(
                                    '5.97',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.06,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.35,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE961FF),
                                  Color(0xFF72A5F2),
                                  Color(0xFF00E5E5),
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text(
                                'Visit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.08),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                top: height * 0,
                left: 0,
                right: 0,
                bottom: height * 0.32,
                child: Center(
                  child: Image.asset(
                    width: width * 0.32,
                    height: width * 0.32,
                    'Assets/planet image.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}