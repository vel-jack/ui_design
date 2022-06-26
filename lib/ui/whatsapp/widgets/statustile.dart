import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';
import 'package:ui_design/ui/whatsapp/views/statusview.dart';

class StatusTile extends StatelessWidget {
  const StatusTile(
      {Key? key,
      required this.index,
      required this.emoji,
      required this.bgColor})
      : super(key: key);
  final int index;
  final String emoji;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => StatusView(
            name: chatlist[index].name,
            time: index,
            emoji: emoji,
            bgColor: bgColor));
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0).copyWith(right: 16),
            child: CircleAvatar(
              backgroundColor: kSecondaryWhatAapp,
              radius: 28,
              child: CircleAvatar(
                backgroundColor: bgColor,
                radius: 25,
                child: Text(
                  emoji,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatlist[index].name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text('${(index + 1) * 2} minutes ago')
            ],
          )
        ],
      ),
    );
  }
}
