import 'package:alcool_gasolina/AppBarCombustivel.dart';
import 'package:alcool_gasolina/BodyCombustivel.dart';
import 'package:alcool_gasolina/RodapeCombustivel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarCombustivel(), body: BodyCombustivel(), bottomNavigationBar: RodapeCombustivel(),);
  }
}
