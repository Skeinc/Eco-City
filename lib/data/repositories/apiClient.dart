import 'dart:convert';
import 'package:eco_city/utils/constants/url.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl = URL;

  Future<http.Response> get(String route) async {
    final response = await http.get(
      Uri.parse('$baseUrl/$route'),
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }

  Future<http.Response> post(String route, Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$route'),
      body: jsonEncode(data),
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }

  Future<http.Response> put(String route, Map<String, dynamic> data) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$route'),
      body: data,
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }

  Future<http.Response> delete(String route, Map<String, dynamic> data) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/$route'),
      body: data,
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }
}
