import 'package:flutter/material.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';

class ChatContent extends StatelessWidget {
  const ChatContent({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: user.lastMsgIsMine
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          margin: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: user.lastMsgIsMine ? kMyMsgColor : Colors.white,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(user.msg),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        user.time,
                        style: const TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      if (user.lastMsgIsMine)
                        const Icon(
                          Icons.done_all,
                          size: 18,
                          color: blueTickWhatsApp,
                        )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
