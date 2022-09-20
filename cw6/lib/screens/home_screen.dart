import 'package:cw6/models/uni.dart';
import 'package:cw6/screens/uni_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var uni = [
    Univesity(
        name: 'Gust',
        imageURL:
            'https://www.gust.edu.kw/sites/default/files/umsl_8753_formain.jpg',
        imageSize: 140),
    Univesity(
        name: 'Shdadyah',
        imageURL:
            'http://ssuc.ku.edu.kw/wp-content/uploads/2017/09/coep-main-1.jpg',
        imageSize: 2),
    Univesity(
        name: 'AUM',
        imageURL:
            'https://www.em-normandie.com/sites/default/files/2018-09/d998f32bc20e05892dabc19b36821730.jpg',
        imageSize: 160)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 1, 1),
        appBar: AppBar(
          title: Center(
              child: Text(
            'Kuwait Universities',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
            itemCount: uni.length,
            itemBuilder: (context, index) {
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UniScreen(uni: uni[index])));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        uni[index].imageURL,
                        width: 150,
                        height: 150,
                      ),
                      Container(
                        padding: EdgeInsets.all(40),
                        child: Text(
                          '${uni[index].name} University',
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
