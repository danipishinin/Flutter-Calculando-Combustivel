import 'package:calcular_combustivel/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {

  var result = "";
  Function reset;

  Success({
    @required this.reset,
    @required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children:<Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
            ),
          ),
          LoadingButton(
            busy: false,
            func: reset,
            invert: true,
            text: "Calcular Novamente")
        ]
      ),

    );
  }
}