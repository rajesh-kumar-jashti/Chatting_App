import 'package:chatty/Pages/Profile/Widgets/UserInfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Get.offAllNamed("/homePage");
          },
        ),
        title: Text("Profile"),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.edit
            )
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LoginUserInfo()
          ],
        ),
      ),
    );
  }
}
