import 'package:cw6/models/uni.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var uni = [
    Univesity(
      name: 'Gust',
      imageURL:
          'https://www.gust.edu.kw/sites/default/files/umsl_8753_formain.jpg',
    ),
    Univesity(name: 'Shdadyah', imageURL: 'images/Shdadyah.jpg'),
    Univesity(
      name: 'AUM',
      imageURL:
          'https://www.em-normandie.com/sites/default/files/2018-09/d998f32bc20e05892dabc19b36821730.jpg',
    )
  ];

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Center(
                child: Text(
              'Menu',
              style: TextStyle(color: Colors.white),
            )),
            backgroundColor: Colors.green,
          ),
          body: ListView(
            children: [
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      uni[0].imageURL,
                      width: 180,
                      height: 150,
                    ),
                    Container(
                      padding: EdgeInsets.all(40),
                      child: Text(
                        '${uni[0].name} University', // gust
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      uni[1].imageURL,
                      width: 140,
                      height: 150, // space under the image
                    ),
                    Container(
                      padding: EdgeInsets.all(40),
                      child: Text(
                        '${uni[1].name} University', // Shdadyah
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      uni[2].imageURL,
                      width: 160,
                      height: 150, // space under the image
                    ),
                    Container(
                      padding: EdgeInsets.all(40),
                      child: Text(
                        '${uni[2].name} University', // AUM
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
