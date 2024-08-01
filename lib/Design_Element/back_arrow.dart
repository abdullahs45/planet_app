import 'package:flutter/material.dart';
import 'package:planet_app/util/util.dart';

class Back_Arrow extends StatefulWidget {
  const Back_Arrow({super.key});

  @override
  State<Back_Arrow> createState() => _Back_ArrowState();
}

class _Back_ArrowState extends State<Back_Arrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.14,
      height: width * 0.14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(53, 35, 29, 29),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          size: width * 0.08,
          color: Colors.white,
        ),
      ),
    );
  }
}
