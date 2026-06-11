import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static final SessionManager _instance = SessionManager._internal();

  factory SessionManager() => _instance;

  SessionManager._internal();

  static const accessToken = 'access_token';
  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future<void> saveUserToken(String token) async {
    await init();
    _prefs?.setString(accessToken, token);
  }

  Future<String?> getUserToken() async {
    await init();
    final token = _prefs?.getString(accessToken);
    return token;
  }
}
