import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors_constants.dart';
import 'package:whatsapp_clone/constants/string_constants.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key, required this.chatModels}) : super(key: key);
  final ChatModels chatModels;
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: ColorsConstants.black12,
              radius: 30,
              child: Icon(
                Icons.person,
                size: 55,
                color: ColorsConstants.white,
              ),
            ),
            title:  Text(StringConstants.amit),
            subtitle: Row(
              children: const [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  StringConstants.subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: ColorsConstants.black),
                ),
              ],
            ),
            trailing: const Text(StringConstants.time),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
