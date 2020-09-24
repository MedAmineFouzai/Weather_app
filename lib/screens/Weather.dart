import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  Weather({Key key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  final time = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.only(top: 20),
          height: 300,
          width: 200,
          child: Column(
            children: <Widget>[
              Icon(
                Icons.wb_sunny,
                color: Colors.yellow,
                size: 100,
              ),
              Text("Tunisa",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text("18°c", style: TextStyle(fontSize: 50, color: Colors.white)),
              Text("Sunday",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text(
                  time.day.toString() +
                      '/' +
                      time.month.toString() +
                      '/' +
                      time.year.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white))
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.65)),
        ));
  }
}
