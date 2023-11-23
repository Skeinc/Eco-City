import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Text("General Screen"),
          ),
        ),
      ),
    );
  }
}
