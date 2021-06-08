import 'package:flutter/material.dart';

class BodyCombustivel extends StatefulWidget {
  @override
  _BodyCombustivelState createState() => _BodyCombustivelState();
}

class _BodyCombustivelState extends State<BodyCombustivel> {
  TextEditingController _controllerValorAlcool = TextEditingController();
  TextEditingController _controllerValorGasolina = TextEditingController();
  String _resultado = '';

  void _calcular() {
    double valorAlcool = double.tryParse(_controllerValorAlcool.text);
    double valorGasolina = double.tryParse(_controllerValorGasolina.text);

    if (valorAlcool == null || valorGasolina == null) {
      setState(() {
        _resultado =
            'Número invalido, digite números maiores que 0 e utilizando o (.)';
      });
    } else {
      var diferenca = valorAlcool / valorGasolina;

      if (diferenca >= 0.70) {
        setState(() {
          _resultado = 'Melhor abastecer com Gasolina!';
        });
      } else {
        setState(() {
          _resultado = 'Melhor abastecer com Álcool!';
        });
      }
    }

    //_resultado
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 50),
              child: Image.asset('images/logo.png'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Saiba qual a melhor opção para abastecimento do seu carro',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Preço do litro do Alcool. Ex: 4.10'),
              controller: _controllerValorAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Preço do litro do Gasolina. Ex: 5.10'),
              controller: _controllerValorGasolina,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                  child: Text(
                    'Calcular',
                  ),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      primary: Colors.blueGrey),
                  onPressed: () {
                    _calcular();
                  }),
            ),
            Text(
              _resultado,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
