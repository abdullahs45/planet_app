import 'package:flutter/material.dart';
import 'package:planet_app/Screens/Inner_Screens/earth_inner.dart';
import 'package:planet_app/util/util.dart';

class HomeSlider_Item extends StatefulWidget {
  const HomeSlider_Item({super.key});

  @override
  State<HomeSlider_Item> createState() => _HomeSlider_ItemState();
}

// ignore: camel_case_types
class _HomeSlider_ItemState extends State<HomeSlider_Item> {
  final double _currentSliderValue = 0;
  final List<String> planets = [
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
    'Pluto'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14, bottom: 8),
      child: SizedBox(
        height: height * 0.06,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: planets.length,
            itemBuilder: (context, index) {
              int displayIndex =
                  (index + _currentSliderValue.toInt()) % planets.length;
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Earth_Inner_Screen()));
                },
                child: Container(
                  width: width * 0.3,
                  height: height * 0.06,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(226, 10, 22, 35),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50),
                      right: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/planet.png',
                        width: width * 0.1,
                        height: width * 0.1,
                      ),
                      Text(
                        planets[displayIndex],
                        style: TextStyle(
                            fontSize: width * 0.035, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
