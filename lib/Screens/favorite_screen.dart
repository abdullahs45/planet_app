import 'package:flutter/material.dart';
import 'package:planet_app/Design_Element/earth_item.dart';
import 'package:planet_app/Design_Element/jupiter_item.dart';
import 'package:planet_app/Design_Element/mars_item.dart';
import 'package:planet_app/Design_Element/mercury_item.dart';
import 'package:planet_app/Design_Element/neptune_item.dart';
import 'package:planet_app/Design_Element/pluto_item.dart';
import 'package:planet_app/Design_Element/saturn_item.dart';
import 'package:planet_app/Design_Element/uranus_item.dart';
import 'package:planet_app/Design_Element/venus_item.dart';
import 'package:planet_app/Screens/profile_screen.dart';
import 'package:planet_app/util/util.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
                        Image.asset(
                          'Assets/setting.png',
                          width: width * 0.2,
                          height: width * 0.2,
                        ),
                        Text(
                          'Favourites',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()));
                          },
                          child: Image.asset(
                            'Assets/profile.png',
                            width: width * 0.2,
                            height: width * 0.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    Earth_Item(),
                    Jupiter_Item(),
                    Mars_Item(),
                    Pluto_Item(),
                    Venus_Item(),
                    Mercury_Item(),
                    Neptune_Item(),
                    Saturn_Item(),
                    Uranus_Item(),
                    Venus_Item(),
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
