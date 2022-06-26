import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';
import 'package:ui_design/ui/whatsapp/widgets/chatcontent.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatColorWhatsApp,
      appBar: AppBar(
        title: Text(user.name),
        backgroundColor: kPrimaryWhatsApp2,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                const Icon(Icons.arrow_back),
                CircleAvatar(
                  radius: 16,
                  child: user.avatar,
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
            tooltip: 'Video Call',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            tooltip: 'Voice Call',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            tooltip: 'Menu',
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: ChatContent(user: user)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.camera_alt,
                            size: 28,
                          ),
                        ],
                      )),
                )),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: kPrimaryWhatsApp2,
                  foregroundColor: Colors.white,
                  radius: 26,
                  child:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
