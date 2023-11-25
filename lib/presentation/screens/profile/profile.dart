import 'dart:convert';

import 'package:eco_city/data/repositories/apiClient.dart';
import 'package:eco_city/presentation/widgets/buttons/generalButton.dart';
import 'package:eco_city/utils/helpers/showSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Профиль'),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: GeneralButton(
                    title: 'Выход',
                    isDisabled: false,
                    onPressed: () async {
                      final response = await ApiClient().get('logOut');
                      print(response.body);
                      if (response.body == 'OK') {
                        Get.offAndToNamed('/startScreen');
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
