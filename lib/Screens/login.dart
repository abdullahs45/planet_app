import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:planet_app/Screens/bottombar_screen.dart';
import 'package:planet_app/util/util.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                padding: EdgeInsets.fromLTRB(
                    width * 0.02, height * 0.1, width * 0.02, height * 0.01),
                child: Text(
                  'PLANET APP',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: width * 0.12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Spacer(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: height * 0.35,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: width * 0.12,
                    top: height * 0.03,
                    right: width * 0.12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: width * 0.08,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      width: width * 0.85,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(44),
                            right: Radius.circular(44),
                          ),
                          border: Border.all(
                              width: 1,
                              color: Colors.white,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: TextField(
                          controller: _emailController,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Enter your Email',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      width: width * 0.8,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(44),
                            right: Radius.circular(44),
                          ),
                          border: Border.all(
                              width: 1,
                              color: Colors.white,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: TextField(
                          controller: _passwordController,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Enter your Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: width * 0.04,
                          color: light_blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      width: width * 0.85,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: gradientButton,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBarScreen()));
                        },
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: width * 0.08,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width * 0.2,
                          height: height * 0.002,
                          color: Color(0xFF8D8E99),
                        ),
                        Text(
                          'or sign in using',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF8D8E99)),
                        ),
                        Container(
                          width: width * 0.2,
                          height: height * 0.002,
                          color: Color(0xFF8D8E99),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // twitter
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFe5e5e5),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: width * 0.12,
                          height: width * 0.12,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset('Assets/twitter.png'),
                            ),
                          ),
                        ),

                        // facebook
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFe5e5e5),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: width * 0.12,
                          height: width * 0.12,
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset('Assets/fb.png'),
                            ),
                          ),
                        ),

                        // Google
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFe5e5e5),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: width * 0.12,
                          height: width * 0.12,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset('Assets/google.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an account yet?',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: width * 0.04),
                          ),
                          SizedBox(width: width * 0.025),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: light_blue,
                                fontSize: width * 0.045),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
