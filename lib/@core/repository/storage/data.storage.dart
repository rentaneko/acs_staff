import 'package:get_storage/get_storage.dart';

import '../models/Profile.dart';

class DataStorage {
  GetStorage? _storage ;

  final _login = 'login';
  final _token = 'token';

  DataStorage() {
    _storage = GetStorage();
  }

  setLogin(String value) async => await _storage?.write(_login, value);

  getLogin() => _storage?.read(_login);

  setToken(Profile? value) async => await _storage?.write(_token, value);

  getToken() {
    var profile = _storage?.read(_token);
    if(profile != null){
      if(profile.runtimeType == Profile){
        return profile;
      }
      else {
        return Profile.fromJson(profile);
      }
    }
    return null;
  }
}
