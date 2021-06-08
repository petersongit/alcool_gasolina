import 'package:flutter/material.dart';

class AppBarCombustivel extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    var _titulo = 'Álcool ou Gasolina';
    return AppBar(
      title: Text(_titulo),
      backgroundColor: Colors.blueGrey,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
