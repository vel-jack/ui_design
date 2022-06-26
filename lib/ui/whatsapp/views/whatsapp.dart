import 'package:flutter/material.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
import 'package:ui_design/ui/whatsapp/views/callslist.dart';
import 'package:ui_design/ui/whatsapp/views/chatlist.dart';
import 'package:ui_design/ui/whatsapp/views/statuslist.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final tabs = <Tab>[
      const Tab(
        text: 'CHATS',
      ),
      const Tab(
        text: 'STATUS',
      ),
      const Tab(
        text: 'CALLS',
      ),
    ];
    final screens = <Widget>[
      const WhatsAppChatlist(),
      StatusList(),
      const CallList()
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: kPrimaryWhatsApp2,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: kPrimaryWhatsApp2,
              title: const Text('WhatsApp'),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            SliverFillRemaining(
                child: Column(
              children: [
                TabBar(indicatorColor: Colors.white, tabs: tabs),
                Expanded(child: TabBarView(children: screens))
              ],
            )),
          ],
        ),
      ),
    );
  }
}
