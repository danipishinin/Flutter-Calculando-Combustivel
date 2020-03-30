import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          SizedBox(height: 60),
          Image.asset("assets/images/fuel.png",height:80),
          SizedBox(height: 15),
          Text(
            "Comparando Combustíveis",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 45),
        ],
    );
  }
}