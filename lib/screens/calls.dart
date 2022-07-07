import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {


  final List<Map> calls = [
    {
      "profile_photo": "https://randomuser.me/api/portraits/women/20.jpg",
      "name": "Susan",
      "call_types": "missed",
      "call_times": 2,
      "call_date_time": "22/06/22, 12:15 AM",
      "video_call": true,
    },
    {
      "profile_photo": "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Jessica",
      "call_types": "received",
      "call_times": 1,
      "call_date_time": "22/06/22, 10:35 PM",
      //"video_call": true,
    },
    {
      "profile_photo": "https://randomuser.me/api/portraits/men/20.jpg",
      "name": "John",
      "call_types": "received",
      "call_times": 3,
      "call_date_time": "21/06/22, 09:55 AM",
      //"video_call": true,
    },
    {
      "profile_photo": "https://images.unsplash.com/photo-1594007759138-855170ec8dc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFydXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "name": "Tatax",
      "call_types": "called",
      "call_times": 2,
      "call_date_time": "20/06/22, 03:00 PM",
      "video_call": true,
    },
  ];

  ListTile _callTile(Map data){
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: NetworkImage(data["profile_photo"]),
      ),
      title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            data["name"],
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            width: 5.0,
          ),
          Text(
            data["call_date_time"],
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 14.0),
          )
        ],
      ),
      trailing: Icon(data["video_call"] != null ? Icons.videocam : Icons.call),
    );
  }

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
                    "Calls",
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
                    child: const Icon(Icons.add_call,color: Color(0xff075E54),size: 24,),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Calls...',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Colors.grey, size: 20,),
                filled: true,
                fillColor: Colors.white30,
                contentPadding: const EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.white30,
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: calls.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                const Divider(height: 10,),
                  _callTile(calls[index]),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
