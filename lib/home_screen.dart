import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Whatsapp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
          ),
          actions: [
            const Icon(Icons.search_outlined),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('New Broadcast'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Linked Device'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Starred Messages'),
                ),
                const PopupMenuItem(
                  value: 5,
                  child: Text('Setting'),
                ),
              ],
            )
          ],
        ),
        body: TabBarView(
          children: [
            const Text('camera'),
            ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3755918/pexels-photo-3755918.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      radius: 25,
                    ),
                    title: Text('Elina'),
                    subtitle: Text('How Are You?'),
                    trailing: Text(
                      '1:36 PM',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                  );
                })),
            const Text('Status'),
            ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3755918/pexels-photo-3755918.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      radius: 25,
                    ),
                    title: Text(
                      'Elina',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('How Are You?'),
                    trailing: Icon(
                      Icons.video_call,
                      color: Colors.teal,
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
