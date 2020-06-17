import 'package:flutter/material.dart';

class BackItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
      ),
    );
  }
}
