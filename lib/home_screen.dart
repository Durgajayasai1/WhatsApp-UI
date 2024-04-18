import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff075e54),
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: false,
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Updates',
              ),
              Tab(
                text: 'Communities',
              ),
              Tab(
                text: 'Calls',
              ),
            ]),
            actions: [
              const Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                          child: Text('New group'),
                          value: '1',
                        ),
                        PopupMenuItem(
                          child: Text('New broadcast'),
                          value: '2',
                        ),
                        PopupMenuItem(
                          child: Text('Linked devices'),
                          value: '3',
                        ),
                        PopupMenuItem(
                          child: Text('Starred messages'),
                          value: '4',
                        ),
                        PopupMenuItem(
                          child: Text('Payments'),
                          value: '5',
                        ),
                        PopupMenuItem(
                          child: Text('Settings'),
                          value: '6',
                        ),
                        PopupMenuItem(
                          child: Text('Switch accounts'),
                          value: '7',
                        ),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images6.alphacoders.com/637/637352.jpg'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text('Where is my dog?'),
                    trailing: Text('22:30 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Text(
                              'Status',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 3),
                                  shape: BoxShape.circle),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images6.alphacoders.com/637/637352.jpg'),
                              ),
                            ),
                            title: const Text('My status'),
                            subtitle: const Text(
                              '23m ago',
                              style: TextStyle(color: Colors.grey),
                            ),
                            trailing: const Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 3),
                            shape: BoxShape.circle),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images6.alphacoders.com/637/637352.jpg'),
                        ),
                      ),
                      title: const Text('John Wick'),
                      subtitle: const Text(
                        '2h ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: const Icon(Icons.more_vert),
                    );
                  }
                }),
            Center(child: Text('Communities')),
            ListView.builder(itemBuilder: (context, index) {
              if (index == 0) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 0, 136, 104),
                    child: Icon(Icons.link, color: Colors.white,),
                  ),
                  title: Text(
                    'Create call link',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('share a link for your WhatsApp call'),
                );
              } else {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images6.alphacoders.com/637/637352.jpg'),
                  ),
                  title: const Text('John Wick'),
                  subtitle: Text(
                    index / 2 == 0 ? 'Missed audio call' : 'Missed video call',
                    style:
                        const TextStyle(color: Color.fromARGB(255, 255, 17, 0)),
                  ),
                  trailing: Icon(
                    index / 2 == 0 ? Icons.call : Icons.missed_video_call,
                    color: const Color(0xff075e54),
                  ),
                );
              }
            }),
          ]),
        ));
  }
}
