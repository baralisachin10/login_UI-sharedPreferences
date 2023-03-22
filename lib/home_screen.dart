import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_login/login_screen.dart';
import 'package:shared_preferences_login/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text('Homepage'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var sharedPref = await SharedPreferences.getInstance();
            sharedPref.setBool(SplashScreenState.keyName, false);

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LogInScreen(),
              ),
            );
          },
          child: const Text('LogOut'),
        ),
      ),
    );
  }
}
