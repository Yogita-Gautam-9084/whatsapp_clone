import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/string_constants.dart';
import 'package:whatsapp_clone/modules/chat_page/chat_screen.dart';

import '../../constants/colors_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConstants.blueChill,
        title: const Text(StringConstants.whatsapp),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (kDebugMode) {
                print(value);
              }
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  value: StringConstants.newGrp,
                  child: Text(StringConstants.newGrp),
                ),
                PopupMenuItem(
                  value: StringConstants.newBrod,
                  child: Text(StringConstants.newBrod),
                ),
                PopupMenuItem(
                  value: StringConstants.device,
                  child: Text(StringConstants.device),
                ),
                PopupMenuItem(
                  value: StringConstants.starredMsg,
                  child: Text(StringConstants.starredMsg),
                ),
                PopupMenuItem(
                  value: StringConstants.payment,
                  child: Text(StringConstants.payment),
                ),
                PopupMenuItem(
                  value: StringConstants.setting,
                  child: Text(StringConstants.setting),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          indicatorColor: ColorsConstants.white,
          controller: _controller,
          tabs: const [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(StringConstants.chats,style: TextStyle(fontWeight: FontWeight.w800),),
            ),
            Tab(
              child: Text(StringConstants.status,style: TextStyle(fontWeight: FontWeight.w800),),
            ),
            Tab(
              child: Text(StringConstants.calls,style: TextStyle(fontWeight: FontWeight.w800),),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Text('Camera'),
          ChatScreen(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
