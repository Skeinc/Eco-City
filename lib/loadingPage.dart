import 'dart:convert';

import 'package:eco_city/data/repositories/apiClient.dart';
import 'package:eco_city/utils/helpers/showSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => LoadingPageState();
}

class LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
        .addPostFrameCallback((_) => _afterBindWidget(context));
  }

  Future<void> _afterBindWidget(context) async {
    await initGet();
  }

  Future<void> initGet() async {
    // Запрос на сервер
    ApiClient().getTokenFromLocal();
    final response = await ApiClient().get('personalData');
    // Обработка ответа от сервера
    print(response);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final responseBody = jsonDecode(response.body);
      final res = await ApiClient().get('isLoggedIn');
      res.body == 'true'
          ? Get.offAndToNamed('/profile')
          : Get.offAndToNamed('/startScreen');
    } else {
      showSnackBar(context, 'Ошибка подключения к серверу');
    }
  }

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
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/authorization_logo.png",
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
