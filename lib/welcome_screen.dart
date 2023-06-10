import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb7e8ff),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                "assets/images/head.png",
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(children: [
                  Expanded(
                      child: Center(
                        child: Text(
                          "collection of information for the photographer".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xff6D6D6D)),
                        ),
                      )),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff008ab2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        'PLAY',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}