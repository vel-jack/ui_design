import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/widgets/statustile.dart';

class StatusList extends StatelessWidget {
  StatusList({Key? key}) : super(key: key);
  final colors = [
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.yellow,
    Colors.purple
  ];
  final emojies = ['🎉', '🥳', '🍰', '🎂', '🎁'];
  final random = Random();
  @override
  Widget build(BuildContext context) {
    const bold = TextStyle(fontWeight: FontWeight.bold);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: Stack(
              children: const [
                CircleAvatar(
                  radius: 25,
                  child: Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                        backgroundColor: kSecondaryWhatAapp,
                        foregroundColor: Colors.white,
                        radius: 11,
                        child: Icon(
                          Icons.add,
                          size: 18,
                        )))
              ],
            ),
            title: const Text(
              'My Status',
              style: bold,
            ),
            subtitle: const Text('Tap to add status update'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Recent Updates',
              style: bold,
            ),
          ),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return StatusTile(
                index: index,
                emoji: emojies[random.nextInt(emojies.length)],
                bgColor: colors[random.nextInt(colors.length)],
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryWhatsApp2,
        onPressed: () {},
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
