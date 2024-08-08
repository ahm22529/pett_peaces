import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();


    
    return prefs.getBool('isLoggedIn') ?? false;
  }

  Future<void> setLoggedIn(bool loggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', loggedIn);
  }
}
