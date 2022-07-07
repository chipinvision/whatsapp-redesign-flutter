import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right:15, top:10, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff075E54),
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                      ),
                      child: const Icon(Icons.qr_code,color: Color(0xff075E54),size: 24,),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right:15, top:5, bottom: 5),
              child: Column(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                    radius: 70,
                  ),
                  Text(
                      "Jaden Smith",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Hey there I'm using WhatsApp",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right:5, top:5, bottom: 5),
              child:  Column(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff075E54),
                      child: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Account'),
                    subtitle: Text('Privacy, security, change number'),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff075E54),
                      child: Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Chats'),
                    subtitle: Text('Theme, wallpaper, chat History'),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff075E54),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Notifications'),
                    subtitle: Text('Message, groups & call tones'),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff075E54),
                      child: Icon(
                        Icons.storage,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Storage and Data'),
                    subtitle: Text('Network usage, auto-download'),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff075E54),
                      child: Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Help'),
                    subtitle: Text('Help center, contact us, privacy policy' ),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right:5, top:10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                            'from',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'invisionchip',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
