import 'package:flutter/material.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';

class ChatTile extends StatelessWidget {
  final User user;
  const ChatTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: user.avatar,
      ),
      title: Text(user.name),
      subtitle: Row(
        children: [
          if (user.lastMsgIsMine)
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.done_all,
                color: blueTickWhatsApp,
                size: 20,
              ),
            ),
          Text(user.msg),
        ],
      ),
      trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(user.time),
            if (user.id < 6 && !user.lastMsgIsMine)
              const CircleAvatar(
                backgroundColor: kSecondaryWhatAapp,
                foregroundColor: Colors.white,
                radius: 10,
                child: Text(
                  '1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              )
          ]),
    );
  }
}
