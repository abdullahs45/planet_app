import 'package:flutter/material.dart';
import 'package:planet_app/util/util.dart';

class SolarSystem_Item extends StatefulWidget {
  const SolarSystem_Item({super.key});

  @override
  State<SolarSystem_Item> createState() => _SolarSystem_ItemState();
}

class _SolarSystem_ItemState extends State<SolarSystem_Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.88,
        height: height * 0.34,
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
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Solar System',
                style: TextStyle(
                    fontSize: width * 0.045,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Container(
                height: height * 0.27,
                width: width * 0.7,
                child: Text(
                  'The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the systems mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial Planets, being composed primarily of rock and metal. The four giant Planets, of the outer system are substantially larger and more massive than the terrestrials.',
                  style:
                      TextStyle(color: Colors.white, fontSize: width * 0.032),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
