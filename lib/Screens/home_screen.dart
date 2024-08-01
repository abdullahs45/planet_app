import 'package:flutter/material.dart';
import 'package:planet_app/Design_Element/home_slider_item.dart';
import 'package:planet_app/Design_Element/planet_of_day_item.dart';
import 'package:planet_app/Design_Element/solar_system_item.dart';
import 'package:planet_app/Screens/profile_screen.dart';
import 'package:planet_app/util/util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(fit: StackFit.expand, children: [
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Milky Way',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: width * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Solar System',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
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
              SizedBox(
                height: height * 0.001,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Slider //
                  HomeSlider_Item(),
                  // Item 1 //
                  PlanetOfDay_Item(),
                  // Item 2 //
                  SolarSystem_Item(),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
