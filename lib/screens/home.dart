import 'package:flutter/material.dart';
import 'package:chat_app/models/chatModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
                children:  [
                  const Text(
                    "Chats",
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
                    child: const Icon(Icons.add,color: Color(0xff075E54),size: 24,),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Peoples...',
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
            itemCount: dummyData.length,
            itemBuilder: (context,i) => Column(
              children: [
                const Divider(height: 10,),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(dummyData[i].avatar),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[i].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        dummyData[i].time,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top:5.0),
                    child: Text(
                      dummyData[i].msg,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
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
