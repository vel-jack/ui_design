import 'package:flutter/material.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';
import 'package:ui_design/ui/whatsapp/widgets/chattile.dart';

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryWhatsApp2,
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}
