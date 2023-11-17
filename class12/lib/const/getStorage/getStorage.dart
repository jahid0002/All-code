import 'package:get_storage/get_storage.dart';

class StorageController {
  static final _box = GetStorage();
  static const _loginKey = 'loginKey';

  static bool isFirstTimeLogin() {
    return _box.read(_loginKey) ?? true;
  }

  static void setLoginData(bool value) {
    _box.write(_loginKey, value);
  }

  static void deleteLoginData() {
    _box.remove(_loginKey);
  }
}
