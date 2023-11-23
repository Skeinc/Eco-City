import 'package:eco_city/presentation/widgets/buttons/generalButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: GeneralButton(
              title: "Создать аккаунт",
              isDisabled: false,
              onPressed: () {
                Get.toNamed('/');
              },
            ),
          ),
        ),
      ),
    );
  }
}
