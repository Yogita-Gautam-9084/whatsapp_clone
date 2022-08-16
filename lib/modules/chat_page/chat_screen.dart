import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors_constants.dart';
import 'package:whatsapp_clone/constants/string_constants.dart';
import 'package:whatsapp_clone/modules/customUI/custom_card.dart';

import '../../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModels> chats = [
    ChatModels(
        name: StringConstants.title,
        icon: Icons.people,
        time: StringConstants.time,
        currentMessage: StringConstants.subtitle,
        isGroup: false),
    ChatModels(
        name: StringConstants.raj,
        icon: Icons.person,
        time: StringConstants.time,
        currentMessage: StringConstants.subtitle,
        isGroup: false),
    ChatModels(
        name: StringConstants.shourya,
        time: StringConstants.time,
        currentMessage: StringConstants.subtitle,
        isGroup: false),
    ChatModels(
        name: StringConstants.love,
        time: StringConstants.time,
        currentMessage: StringConstants.subtitle,
        isGroup: false),
    ChatModels(
        name: StringConstants.amit,
        time: StringConstants.time,
        currentMessage: StringConstants.subtitle,
        isGroup: false),
    ChatModels(
        name: StringConstants.lalit,
        time: StringConstants.time,
        currentMessage: StringConstants.subtitle,
        isGroup: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          ),
        ),
        backgroundColor: ColorsConstants.blueChill,
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModels: chats[index],
        ),
      ),
    );
  }
}
