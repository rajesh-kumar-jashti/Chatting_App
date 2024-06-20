import 'package:chatty/Pages/Auth/Widgets/AuthPageBody.dart';
import 'package:chatty/Pages/Welcome/Widgets/WelcomeHeading.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                WelcomeHeading(),
                SizedBox(height: 20),
                AuthPageBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}