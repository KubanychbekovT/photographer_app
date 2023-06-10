import 'package:flutter/material.dart';
import 'package:potographer_app/models.dart';

class TutorialPage extends StatelessWidget {
  final Tutorial tutorial;
  const TutorialPage({Key? key, required this.tutorial}) : super(key: key);

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
                child: Center(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            tutorial.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff86aec1)),
                          ),
                          Text(
                            tutorial.description,
                            style: TextStyle(fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff86aec1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
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
                    'OK',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )
    );
  }
}