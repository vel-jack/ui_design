import 'package:flutter/material.dart';
import 'package:ui_design/ui/constants_whatsapp.dart';
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
      )
    ];
    final screens = <Widget>[const WhatsAppChatlist(), StatusList()];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kPrimaryWhatsApp2,
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              backgroundColor: kPrimaryWhatsApp2,
              title: Text('WhatsApp'),
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
