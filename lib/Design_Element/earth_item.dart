import 'package:flutter/material.dart';
import 'package:planet_app/util/util.dart';

class Earth_Item extends StatefulWidget {
  const Earth_Item({super.key});

  @override
  State<Earth_Item> createState() => _Earth_ItemState();
}

class _Earth_ItemState extends State<Earth_Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: width * 0.88,
        height: height * 0.18,
        // margin: EdgeInsets.symmetric(horizontal: width * 0.008),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 20, 8, 0),
                  child: Image.asset(
                    // 'Assets/planet 2.png',
                    'Assets/planet image.png',
                    width: width * 0.2,
                    height: width * 0.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: width * 0.22,
                            child: Text(
                              'Earth',
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 129, 206, 243)),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.35,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite_border,
                              size: width * 0.08,
                              color: const Color.fromARGB(215, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.003,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Container(
                          height: height * 0.07,
                          width: width * 0.56,
                          child: Text(
                            'The only planet known to support life, with diverse climates and a protective atmosphere.',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.032),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.01,
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
