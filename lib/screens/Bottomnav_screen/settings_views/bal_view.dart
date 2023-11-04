 // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

 import 'package:flutter/material.dart';

 class BalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bal View'),
      ),
      body: Center(
        child: Text('This is the Bal View content.'),
      ),
    );
  }
}
