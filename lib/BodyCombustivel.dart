import 'package:flutter/material.dart';

class BodyCombustivel extends StatefulWidget {
  @override
  _BodyCombustivelState createState() => _BodyCombustivelState();
}

class _BodyCombustivelState extends State<BodyCombustivel> {
  TextEditingController _valorAlcool = TextEditingController();
  TextEditingController _valorGasolina = TextEditingController();

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
              controller: _valorAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Preço do litro do Gasolina. Ex: 5.10'),
              controller: _valorGasolina,
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
                    print(_valorGasolina.toString());
                  }),
            ),
            Text(
              'Resultado',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
