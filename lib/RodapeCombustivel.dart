import 'package:flutter/material.dart';

class RodapeCombustivel extends StatelessWidget {
  const RodapeCombustivel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: EdgeInsets.all(16),
      ),
      color: Colors.blueGrey,
    );
  }
}
