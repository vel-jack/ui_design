import 'package:flutter/material.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';
import 'package:ui_design/ui/whatsapp/widgets/chattail.dart';

class WhatsAppChatlist extends StatelessWidget {
  const WhatsAppChatlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatTile(user: chatlist[index]);
        },
      ),
    );
  }
}
