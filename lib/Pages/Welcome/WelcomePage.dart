import 'package:chatty/Pages/Welcome/Widgets/WelcomeBody.dart';
import 'package:chatty/Pages/Welcome/Widgets/WelcomeFooterButton.dart';
import 'package:chatty/Pages/Welcome/Widgets/WelcomeHeading.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WelcomeHeading(),
              WelcomeBody(),
              WelcomeFooterButton()
            ] 
          ),
        )),
    );
  }
}
