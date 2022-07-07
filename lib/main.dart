////////////////////////////////////////////////////
//    Instagram: @invisionchip
//    GitHub: chipinvision
//    LIKE  -  SHARE  -  FOLLOW
////////////////////////////////////////////////////
import 'package:chat_app/screens/calls.dart';
import 'package:chat_app/screens/home.dart';
import 'package:chat_app/screens/stories.dart';
import 'package:chat_app/screens/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Messenger',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
        primaryColor: const Color(0xff075E54),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selected = 0;

  final pages = const [
    HomeScreen(),
    StoryScreen(),
    CallScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe3e3e3),
      body: pages[selected],
      bottomNavigationBar: NavigationBar(
        height: 65,
        selectedIndex: selected,
        animationDuration: const Duration(seconds: 3),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (index){
          setState((){
            selected = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_bubble),
            label: "Chats",
            selectedIcon: Icon(Icons.chat_bubble_outline),
          ),
          NavigationDestination(
            icon: Icon(Icons.local_fire_department),
            label: "Stories",
            selectedIcon: Icon(Icons.local_fire_department_outlined),
          ),
          NavigationDestination(
            icon: Icon(Icons.call),
            label: "Calls",
            selectedIcon: Icon(Icons.call_outlined),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Settings",
            selectedIcon: Icon(Icons.settings_outlined),
          ),
        ],
      ),
    );
  }
}
