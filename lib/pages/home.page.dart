import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import '../logo.widget.dart';
import '../submit-form.dart';
import 'package:calcular_combustivel/success.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var _gasCtrl = new MoneyMaskedTextController();
var _alcoolCtrl = new MoneyMaskedTextController();
var _busy = false; 
var _completed = false; 
var _resultText = "Compensa usar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //usando a cor primária do tema no app.
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          _completed 
            ? Success(
              result: _resultText,
              reset: reset,
            )
            :
            SubmitForm(
              alcoolCtrl: _alcoolCtrl,
              gasCtrl: _gasCtrl,
              submitFunc: calculate,
              busy: _busy,
            ),
        ],
      ),
    );
  }
    Future calculate(){
      // converter pra double e trocar todas as vírgulas por ponto.
      double alcool =
        double.parse(_alcoolCtrl.text.replaceAll(new RegExp(r'[,.]'), ''))/100;
      double gas =
        double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), ''))/100;
      double resultado_comparacao = alcool/gas;

      setState(() {
        _completed = false;
        _busy = true;
      });

    return new Future.delayed(const Duration(seconds: 1),(){
         setState(() {
        if(resultado_comparacao >= 0.7)
        _resultText = "Compensa utilizar Gasolina!!";
      else
        _resultText = "Compensa utilizar Álcool!!";

      _busy = false;
      _completed = true;
      });
    });    
  }
  
  reset() {
    setState(() {
      _alcoolCtrl = new MoneyMaskedTextController();
      _gasCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}