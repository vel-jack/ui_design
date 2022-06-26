import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ui_design/ui/whatsapp/models/user.dart';

class StatusView extends StatefulWidget {
  const StatusView(
      {Key? key,
      required this.name,
      required this.time,
      required this.emoji,
      required this.bgColor})
      : super(key: key);
  final String name;
  final int time;
  final String emoji;
  final Color bgColor;
  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.addListener(() {
      setState(() {});
    });

    controller.forward().whenComplete(() => Get.back());

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: widget.bgColor,
          ),
          LinearProgressIndicator(
            color: Colors.white,
            value: animation.value,
          ),
          Row(
            children: [
              BackButton(
                onPressed: () => Get.back(),
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0).copyWith(top: 10),
                child: CircleAvatar(
                  child: chatlist[widget.time].avatar,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    '${(widget.time + 1) * 2} minutes ago',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.white,
              )
            ],
          ),
          Center(
              child: Text(
            widget.emoji,
            style: const TextStyle(fontSize: 100),
          )),
        ],
      ),
    );
  }
}
