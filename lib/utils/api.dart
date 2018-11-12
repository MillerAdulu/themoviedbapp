import 'dart:async';

import 'network.dart';
import 'package:imdbapp/serializers/serializers.dart';

// Models
import 'package:imdbapp/models/user/user.dart';

class IDMBAPI {
  NetworkUtil _networkUtil = new NetworkUtil();
  static final String baseUrl = '__INSERT_BASE_URL_HERE___';

  Future<UserData> login(String username, String password) async {
    final String loginUrl = '$baseUrl/login';

    return _networkUtil.post(loginUrl, body: {
      'username': username,
      'password': password,
    }).then((dynamic res) {
      if (res == null) return null;
      return serializers.deserializeWith(UserData.serializer, res);
    });
  }

  Future<List<User>> users() {
    final String getUsersUrl = '$baseUrl/users';

    return _networkUtil.get(getUsersUrl).then((dynamic res) {
      if (res == null) return null;

      UserData userData = serializers.deserializeWith(UserData.serializer, res);
      return userData.users.map<User>((User user) => user).toList();
    });
  }
}

IDMBAPI api = new IDMBAPI();
