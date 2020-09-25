import 'package:flutter/material.dart';

class BackGround extends StatefulWidget {
  final String wallpapper;
  BackGround({this.wallpaper) : super(key: key);

  @override
  _BackGroundState createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.wallpaper,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
