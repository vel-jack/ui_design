import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';

class CallList extends StatelessWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logIcons = [Icons.call_made, Icons.call_received];
    final rand = Random();
    return Scaffold(
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0).copyWith(right: 16),
                    child: CircleAvatar(
                      radius: 25,
                      child: chatlist[index].avatar,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatlist[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: [
                          rand.nextBool()
                              ? Icon(
                                  logIcons[0],
                                  size: 18,
                                  color: kSecondaryWhatAapp,
                                )
                              : Icon(
                                  logIcons[1],
                                  size: 18,
                                  color: Colors.red,
                                ),
                          Text('${(index + 1) * 2} minutes ago'),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        rand.nextBool() ? Icons.call : Icons.videocam,
                        color: kPrimaryWhatsApp2,
                      ))
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryWhatsApp2,
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
