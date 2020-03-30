import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {

  var label = "";
    // formatação dinheiro
  var ctrl = new MoneyMaskedTextController();

  // criando um construtor
  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )
                ),
              ),
              SizedBox(width:15),
              Expanded(
                child: TextFormField(
                  controller: ctrl,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                  // removendo a linha default que aparece no input
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ],
          );
  }
}