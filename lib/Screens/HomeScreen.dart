import 'package:app_flutter/Pages/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What app Clone"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(
              onSelected: ((value) {
                print(value);
              }),
              itemBuilder: ((BuildContext contextBuild) => [
                    const PopupMenuItem(
                        value: "New group", child: Text("New group")),
                    const PopupMenuItem(
                        value: "New broadcast", child: Text("New broadcast")),
                    const PopupMenuItem(
                        value: "Whatsapp Web", child: Text("Whatsapp Web")),
                    const PopupMenuItem(
                        value: "Starred messages",
                        child: Text("Starred messages"))
                  ])),
        ],
        bottom: TabBar(
          indicatorColor  : Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLs",
            ),
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        controller: _controller,

        children: [
          Text("Camera"),
          ChatPage(),
          Text("Camera"),
          Text("Camera"),
        ],
      ),
    );
  }
}
