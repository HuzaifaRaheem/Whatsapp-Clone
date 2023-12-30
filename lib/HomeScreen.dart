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
          title: Text('WhatsApp'),
          bottom: TabBar(
            tabs: [
              Icon(Icons.camera_alt_rounded),
              Text('Chats'),
              Text('Status'),
              Text('Calls')
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
                icon: Icon(Icons.more_horiz),
                itemBuilder: (context,)=>[
              PopupMenuItem(
                value: 1,
                  child: Text('New Group')
              ),
              PopupMenuItem(
                value: 2, child: Text('Setting')
              ),
              PopupMenuItem(
                value: 3,
                  child: Text('Logout')
              ),

            ]),
            SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            Tab(child: Text('Camera')),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D5603AQG-5M__V53AXw/profile-displayphoto-shrink_800_800/0/1695140381805?e=2147483647&v=beta&t=QAPVKXnsKyrYWgkcD46GG6IhclKezqUW8gyvN7C9Pvk'),
                    ),
                    title: Text('Huzaifa Raheem'),
                    subtitle: Text('How are you?'),
                    trailing: Text('6:00pm'),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green,width: 2.5),

                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D5603AQG-5M__V53AXw/profile-displayphoto-shrink_800_800/0/1695140381805?e=2147483647&v=beta&t=QAPVKXnsKyrYWgkcD46GG6IhclKezqUW8gyvN7C9Pvk'),
                      ),
                    ),

                    title: Text('Huzaifa Raheem'),
                    subtitle: Text('today at 12:00am'),

                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D5603AQG-5M__V53AXw/profile-displayphoto-shrink_800_800/0/1695140381805?e=2147483647&v=beta&t=QAPVKXnsKyrYWgkcD46GG6IhclKezqUW8gyvN7C9Pvk'),
                    ),
                    title: Text('Huzaifa Raheem'),
                    subtitle: Text('You missed a call'),
                    trailing: Icon(Icons.phone),
                  );
                }),

          ],
        ),
      ),
    );
  }
}
