import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:srilankan_airline/model/user_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserProvider with ChangeNotifier {
  late User user;

  Future<User?> getUserProfile() async {
    final authToken = await FlutterSecureStorage().read(key: 'token');

    if (authToken != null) {
      print('called');
      final profileResponse = await http.get(
        Uri.parse('https://srilankanairline-backend.herokuapp.com/api/user'),
        headers: {'x-auth-token': authToken},
      );

      if (profileResponse.statusCode == 200) {
        notifyListeners();
        final data = jsonDecode(profileResponse.body);
        user = new User.fromJson(data);
        return user;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
