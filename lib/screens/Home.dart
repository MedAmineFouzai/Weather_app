import 'package:flutter/material.dart';
import 'package:weather_app/screens/BackGround.dart';
import 'package:weather_app/screens/CustomButton.dart';
import 'package:weather_app/screens/DaysWeather.dart';
import 'package:weather_app/screens/Weather.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackGround("images/night3.png"),
        Weather(),
        CustomButton(),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: ListView(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 1.45),
            children: <Widget>[
              DaysWeather(day: "Sunday"),
              DaysWeather(day: "Monday"),
              DaysWeather(day: "Tuesday"),
              DaysWeather(day: "Wednesday"),
              DaysWeather(day: "Thursday"),
              DaysWeather(day: "Friday"),
              DaysWeather(day: "Saturday")
            ],
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
