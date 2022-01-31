import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chat-screen.dart';
import 'camera-screen.dart';
import 'status-screen.dart';
import 'call-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(7, 94, 84, 1),
            title: Text('WhatsUpp'),
            leading: IconButton(
              icon: Icon(Icons.whatshot_outlined),
              onPressed: () {},
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            bottom: TabBar(
              controller: tabController,
              onTap: (index) {
                setState(() {
                  tabController.animateTo(index);
                });
              },
              // labelPadding: EdgeInsets.all(5),
              isScrollable: true,
              indicatorWeight: 4,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  icon: Center(child: Icon(Icons.camera_alt_rounded)),
                ),
                Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('CHATS'),
                  )),
                  width: Get.width * 0.2,
                ),
                Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('STATUS'),
                  )),
                  width: Get.width * 0.2,
                ),
                Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('CALLS'),
                  )),
                  width: Get.width * 0.2,
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ));
  }
}
