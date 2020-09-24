import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton({Key key}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 1.35,
          top: MediaQuery.of(context).size.height / 2),
      child: FloatingActionButton.extended(
        onPressed: null,
        backgroundColor: Colors.redAccent,
        label: Row(
          children: <Widget>[
            Text(
              "ADD",
              style: TextStyle(fontSize: 15),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
