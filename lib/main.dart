import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.lightBlue,
              child: Stack(
                textDirection: TextDirection.rtl,
                alignment: Alignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 90,
                    color: Colors.yellowAccent,
                    child: Text("Hi"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: Text("Hi"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      color: Colors.orange,
                      child: Text("Hi"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.black,
              child: Stack(
                textDirection: TextDirection.rtl,
                alignment: AlignmentDirectional.center,
                children: [
                  // Positioned(
                  //   top: 20,
                  //   left: 20,
                  //   child:
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 150,
                    color: Colors.yellowAccent,
                    child: Text("Hi"),
                  ),
                  // ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Text("Hi"),
                  ),

                  Positioned(
                    top: 110,
                    left: 30,
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                      child: Text("Hi"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  child: Text("Black", style: TextStyle(color: Colors.white),),
                ),
                 Align(
                   alignment: Alignment.bottomRight,
                  child:
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.red,
                    child: Text("red", style: TextStyle(color: Colors.white),),
                  ),
                 ),
                Positioned(
                  top: 70,
                  left: 250,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 99,
                    height: 99,
                    color: Colors.orange,
                    child: Text("orange", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
