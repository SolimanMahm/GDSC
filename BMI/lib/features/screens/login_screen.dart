import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 100.0),
        child: Column(
          children: [
            Image.asset('assets/images/OIP.jpeg'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'UsreName',
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final SharedPreferences sp =
                    await SharedPreferences.getInstance();
                sp.setBool('Login', true);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Forgot Password?'),
          ],
        ),
      ),
    );
  }
}
