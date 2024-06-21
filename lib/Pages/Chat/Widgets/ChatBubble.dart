import 'package:chatty/Config/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isComing;
  final String time;
  final String status;
  final String imageUrl;
  const ChatBubble(
      {super.key,
      required this.message,
      required this.isComing,
      required this.time,
      required this.status,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment:
            isComing ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
              padding: EdgeInsets.all(10),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width / 1.3,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: isComing
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(10),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(0),
                      ),
              ),
              child: imageUrl == ""
                  ? Text(message)
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(imageUrl),
                        ),
                        message == "" ? Container() : SizedBox(height: 10),
                        message == "" ? Container() : Text(message),
                      ],
                    )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: isComing?MainAxisAlignment.start: MainAxisAlignment.end,
            children: [
              isComing?Text(time, style: Theme.of(context).textTheme.labelMedium,):Row(
                children: [
                  Text(
                    time,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset(
                    AssetsImage.chatStatusSvg,
                    width: 20,  
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
