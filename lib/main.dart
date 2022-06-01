import 'package:flutter/material.dart';
import 'package:drawing_3d/shpere_ball.dart';
import 'package:drawing_3d/sphere_density.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The MAGIC 8-Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The MAGIC 8-Ball'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              //const SphereDensity(diameter:200),
              const SphereBall(),
            ],
          ),
        ),
      ),
    );
  }
}
