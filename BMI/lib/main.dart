import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'features/screens/home_screen.dart';
import 'features/screens/login_screen.dart';

/*void main() {
  runApp( BMI());
}*/

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var flag = prefs.getBool('Login');
  print('$flag SOLIMAN');
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (flag == false || flag == null) ? Login() : Home()));
}
