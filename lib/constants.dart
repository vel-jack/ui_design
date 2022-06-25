import 'package:flutter/material.dart';
import 'package:ui_design/main.dart';
import 'package:ui_design/ui/whatsapp/views/whatsapp.dart';

final allRoutes = <String, Map<String, dynamic>>{
  "whaatsapp": {"name": "WhatsApp", "view": const WhatsApp()}
};

final kRoutes = <String, WidgetBuilder>{
  Navigator.defaultRouteName: (context) => MyHomePage(),
  for (String routeName in allRoutes.keys)
    routeName: (context) => allRoutes[routeName]!["view"]
};
