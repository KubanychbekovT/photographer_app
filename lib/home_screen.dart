import 'package:flutter/material.dart';
import 'package:potographer_app/tutorial_screen.dart';

import 'models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffb7e8ff),
        body:
        Column(
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
              SizedBox(height: 16,),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: tutorials.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff008ab2),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TutorialPage(tutorial: tutorials[index]),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Center(
                              child: Text(
                                tutorials[index].name,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ])

    );
  }
}