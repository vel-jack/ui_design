import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: kRoutes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final routes = allRoutes.keys.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter UI'),
        ),
        body: ListView.builder(
          itemCount: routes.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('${allRoutes[routes[index]]!["name"]}'),
              onTap: () {
                Get.toNamed(routes[index]);
              },
            );
          },
        ));
  }
}
