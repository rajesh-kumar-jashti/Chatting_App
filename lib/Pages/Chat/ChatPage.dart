import 'package:chatty/Config/Images.dart';
import 'package:chatty/Pages/Chat/Widgets/ChatBubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(AssetsImage.boyPic),
        ),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rajesh Kumar", style: Theme.of(context).textTheme.bodyLarge),
                Text(
                  "online",
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.phone,
            )
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.video_call,
            )
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).colorScheme.primaryContainer
        ),
        child: Row(
          children: [
            Container(
              child: SvgPicture.asset(
                AssetsImage.chatMicSvg, 
                width: 25),
              ),
            SizedBox(width: 10,),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: false, hintText: "Type message..."
                ),
              )
            ),
            Container(
              child: SvgPicture.asset(
                AssetsImage.chatGallerySvg, 
                width: 25,)
              ),
            SizedBox(width: 10,),
            Container(
              child: SvgPicture.asset(
                AssetsImage.chatSendSvg,
                width: 25,
              ))
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ChatBubble(
              message: "Hello world",
              imageUrl: "",
              isComing: true,
              status: "read",
              time: "10:10 AM",
            ),
            ChatBubble(
              message: "Hello world",
              imageUrl: "",
              isComing: false,
              status: "read",
              time: "10:10 AM",
            ),
            ChatBubble(
              message: "Hello world",
              imageUrl: "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
              isComing: false,
              status: "read",
              time: "10:10 AM",
            ),
            ChatBubble(
              message: "Hello world",
              imageUrl: "",
              isComing: true,
              status: "read",
              time: "10:10 AM",
            ),
            ChatBubble(
              message: "Hello world",
              imageUrl: "",
              isComing: false,
              status: "read",
              time: "10:10 AM",
            ),
            ChatBubble(
              message: "Hello world",
              imageUrl: "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
              isComing: false,
              status: "read",
              time: "10:10 AM",
            )
          ]
        ),
      ),
    );
  }
}