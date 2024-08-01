import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:planet_app/Design_Element/back_arrow.dart';
import 'package:planet_app/util/util.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'Assets/image 10.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Container(
                    width: width,
                    height: height * 0.1,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(189, 8, 24, 40),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Back_Arrow(),
                        ),
                        Text(
                          'My Profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.14,
                          height: width * 0.14,
                        ),
                      ],
                    ),
                  ),
                ),
                // item 1 //

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.88,
                    height: height * 0.15,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(160, 8, 24, 40),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(25),
                        right: Radius.circular(25),
                      ),
                    ),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'Assets/profile_img.png',
                                  width: width * 0.26,
                                  height: width * 0.26,
                                ),
                                Opacity(
                                  opacity: 0.2,
                                  child: Image.asset(
                                    'Assets/Ellipse.png',
                                    width: width * 0.26,
                                    height: width * 0.28,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Abdullah Shafique',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: width * 0.04),
                            ),
                            Text(
                              'Space adventurer',
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.036),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 16),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'Assets/edit_icon.png',
                              width: width * 0.05,
                              height: height * 0.05,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.88,
                    height: height * 0.62,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(204, 8, 24, 40),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(25),
                        right: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'Assets/control.png',
                                height: height * 0.12,
                                width: width * 0.15,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                'Show planetary progress',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04),
                              )
                            ],
                          ),
                          Stack(alignment: Alignment.center, children: [
                            Container(
                              width: width * 0.7,
                              height: width * 0.7,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(30, 255, 255, 255),
                                  width: 16,
                                ),
                              ),
                            ),
                            Container(
                              width: width * 0.7,
                              height: width * 0.7,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromARGB(255, 24, 196, 249),
                                  width: 16,
                                ),
                              ),
                            ),
                            Positioned(
                              child: Column(
                                children: [
                                  Text(
                                    'Personal\nProgess',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.065,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    '87.1%',
                                    style: TextStyle(
                                        color: Color(0xFF859AF4),
                                        fontSize: width * 0.16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          Row(
                            children: [
                              Image.asset(
                                'Assets/checkbox_on.png',
                                height: height * 0.08,
                                width: width * 0.08,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                'Show me in Planet Rating',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'Assets/checkbox_on.png',
                                height: height * 0.08,
                                width: width * 0.08,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                'Notifications',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
