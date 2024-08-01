import 'package:flutter/material.dart';
import 'package:planet_app/util/util.dart';

class PlanetOfDay_Item extends StatefulWidget {
  const PlanetOfDay_Item({super.key});

  @override
  State<PlanetOfDay_Item> createState() => _PlanetOfDay_ItemState();
}

class _PlanetOfDay_ItemState extends State<PlanetOfDay_Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.88,
        height: height * 0.28,
        margin: EdgeInsets.symmetric(horizontal: width * 0.008),
        decoration: BoxDecoration(
          color: Color.fromARGB(160, 8, 24, 40),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25),
            right: Radius.circular(25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 16),
              child: Text(
                'Planet of the day',
                style: TextStyle(
                    fontSize: width * 0.045,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.24,
                  child: Image.asset(
                    'Assets/planet 2.png',
                    width: width * 0.3,
                    height: width * 0.3,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Mars',
                      style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 129, 206, 243)),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Container(
                      height: height * 0.12,
                      width: width * 0.54,
                      child: Text(
                        'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.',
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.032),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 28, top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.006,
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    weight: width * 0.012,
                    color: const Color.fromARGB(255, 68, 205, 255),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
