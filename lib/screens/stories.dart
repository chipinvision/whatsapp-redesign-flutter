import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right:15, top:10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Stories",
                    style: TextStyle(
                      color: Color(0xff075E54),
                      fontSize: 30,
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
                    child: const Icon(Icons.edit,color: Color(0xff075E54),size: 24,),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0, top: 3.0, bottom: 3.0),
                  child: ListTile(
                    leading: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
                        ),
                        Positioned(
                          bottom: 0.0,
                          right: 1.0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: const Text(
                      "My Status",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Tap to add status update"),
                  ),
                ),
                const Divider(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Recent Updates",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Stack(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                      ),
                    ],
                  ),
                  title: const Text(
                    "Jessica",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Today, 12:00 PM"),
                ),
                const Divider(height: 10,),
                ListTile(
                  leading: Stack(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1594007759138-855170ec8dc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFydXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                      ),
                    ],
                  ),
                  title: const Text(
                    "Tatax",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Today, 04:15 PM"),
                ),
                const Divider(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Viewed Updates",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Stack(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1655916028111-71ec009a656f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      ),
                    ],
                  ),
                  title: const Text(
                    "Gourav",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Today, 09:30 AM"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
