import 'package:flutter/material.dart';

class DaysWeather extends StatefulWidget {
  final String day;
  DaysWeather({this.day});

  @override
  _DaysWeatherState createState() => _DaysWeatherState();
}

class _DaysWeatherState extends State<DaysWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(3.85),
      child: Column(
        children: <Widget>[
          Text(
            widget.day,
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 20),
          ),
          Icon(
            Icons.wb_cloudy,
            size: 70,
            color: Colors.white70,
          ),
          Text(
            "10°C",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 20),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.25),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
