import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';
import 'package:ui_design/ui/whatsapp/views/chatview.dart';

class ChatTile extends StatelessWidget {
  final User user;
  const ChatTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(right: 10),
      child: InkWell(
        onTap: () => Get.to(() => ChatView(user: user)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 26,
                child: user.avatar,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
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
              ],
            ),
            const Spacer(),
            Column(
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    )
                ])
          ],
        ),
      ),
    );
  }
}
