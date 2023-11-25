import 'dart:convert';
import 'package:eco_city/domain/models/registration/registrationModel.dart'
    as regData;
import 'package:eco_city/data/repositories/apiClient.dart';
import 'package:eco_city/utils/helpers/showSnackBar.dart';
import 'package:get/get.dart';

class AuthenticationApiClient {
  Future<void> login(context, String phone, String password) async {
    // Запрос на сервер
    final response =
        await ApiClient().post('auth', {'phone': phone, 'password': password});

    // Обработка ответа от сервера
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final responseBody = jsonDecode(response.body);
      if (responseBody['success'] == true) {
      } else {
        showSnackBar(context, responseBody['message']);
      }
    } else {
      showSnackBar(context, 'Ошибка подключения к серверу');
    }
  }

  Future<void> checkPhone(context, String phone) async {
    // Запрос на сервер
    final response = await ApiClient().post('checkPhone', {'number': phone});

    // Обработка ответа от сервера
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final responseBody = jsonDecode(response.body);
      if (responseBody['success'] == true) {
        Get.toNamed('/verifyPhone');
      } else {
        showSnackBar(context, responseBody['message']);
      }
    } else {
      showSnackBar(context, 'Ошибка подключения к серверу');
    }
  }

  Future<void> verifyPhone(context, String phoneToken) async {
    // Запрос на сервер
    final response =
        await ApiClient().post('verifyNumber', {'phoneToken': phoneToken});

    // Обработка ответа от сервера
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final responseBody = jsonDecode(response.body);
      if (responseBody['success'] == true) {
        regData.userCode = responseBody['code'];
        showSnackBar(
          context,
          "Ваш код: ${responseBody['code']}",
        );
      } else {
        showSnackBar(context, responseBody['message']);
      }
    } else {
      showSnackBar(context, 'Ошибка подключения к серверу');
    }
  }

  Future<void> register(context, String name, String phone, String phoneToken,
      String password, String email, String address, String region) async {
    // Запрос на сервер
    final response = await ApiClient().post('reg', {
      'name': name,
      'phone': phone,
      'phoneToken': phoneToken,
      'password': password,
      'email': email,
      'address': address,
      'region': region
    });

    // Обработка ответа от сервера
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final responseBody = jsonDecode(response.body);
      if (responseBody['success'] == true) {
        print('Registration is done');
      } else {
        showSnackBar(context, responseBody['message']);
      }
    } else {
      showSnackBar(context, 'Ошибка подключения к серверу');
    }
  }
}
