// lib/services/registration_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegistrationService {
  final String _baseUrl =
      "http://localhost:8080"; // replace with your API base URL

  Future<bool> registerUser({
    required String firstName,
    required String middleName,
    required String lastName,
    required String id,
    required String email,
    required String mobile,
    required String referralCode,
  }) async {
    final url = Uri.parse("$_baseUrl/register");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "firstName": firstName,
        "middleName": middleName,
        "lastName": lastName,
        "id": id,
        "email": email,
        "mobile": mobile,
        "referralCode": referralCode,
      }),
    );

    // Check if the request was successful
    if (response.statusCode == 200) {
      return true;
    } else {
      print("Failed to register user: ${response.body}");
      return false;
    }
  }
}
