import 'package:chatty/Config/Images.dart';
import 'package:chatty/Pages/HomPage/Widget/ChatTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: (){
            Get.toNamed("/chatPage");
          },
          child: ChatTile(
            imageUrl: AssetsImage.girlPic,
            name: "SSSA kumar",
            lastChat: "Hello world",
            lastTime: "08:22 PM",
          ),
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Rajesh kumar",
          lastChat: "Helloooooo world",
          lastTime: "08:50 PM",
        ),
      ],
    );
  }
}
