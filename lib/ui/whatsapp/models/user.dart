import 'dart:math';
import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:username/username.dart';

class User {
  User({
    required this.id,
    required this.name,
    required this.avatar,
    required this.time,
    required this.msg,
    required this.lastMsgIsMine,
  });
  final int id;
  final String name;
  final Widget avatar;
  final String time;
  final String msg;
  final bool lastMsgIsMine;
}

final random = Random();
final greetings = [
  'Hi 👋',
  'Hello 👋',
  'Whatsup 🤔',
  'Ok 👍',
  'Life is going on 🏃‍♂️',
  'Nothing to say',
  'Good news 🙋',
  'Do you remember?',
  'Miss those times',
  'Send me the docs',
  'Happy birthday 🎂',
  'Leave it',
  'Are you coming or not?',
  'Good day',
  'See you then'
];
final List<User> chatlist = List.generate(
    20,
    (index) => User(
        id: index,
        name: Username.en().fullname,
        avatar: randomAvatar('hi$index'),
        time:
            '${random.nextInt(12)}:${random.nextInt(6)}${random.nextInt(9)} ${index < 12 ? "am" : "pm"}',
        lastMsgIsMine: random.nextInt(24) < 10 ? true : false,
        msg: greetings[random.nextInt(greetings.length)]));
