import 'package:hive/hive.dart';
import 'package:random_user/core/response/user/user_data.dart';

class LocalDB {
  static const _appDbBox = '_appDbBox';
  static const fcmKey = 'fcm_key';
  static const platform = 'platform';
  final Box<dynamic> _box;

  LocalDB._(this._box);

  static Future<LocalDB> getInstance() async {
    final box = await Hive.openBox<dynamic>(_appDbBox);
    return LocalDB._(box);
  }

  T getValue<T>(dynamic key, {T? defaultValue}) =>
      _box.get(key, defaultValue: defaultValue) as T;

  Future<void> setValue<T>(dynamic key, T value) => _box.put(key, value);

  List<UserData> get categoryList =>
      getValue("category_list", defaultValue: []);
  set categoryList(List<UserData> list) => setValue("category_list", list);
}
