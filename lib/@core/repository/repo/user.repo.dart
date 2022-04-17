
import '../apis/user.api.dart';
import '../models/Profile.dart';

class UserRepo {
  final UserApi userApi;

  UserRepo(this.userApi);

  Future<Profile?> login({required String username, required String password}) async {
    var res = await userApi.login({'username': username, 'password': password});
    return res?.success == true ? Profile.fromJson(res?.data) : null;
  }

}
