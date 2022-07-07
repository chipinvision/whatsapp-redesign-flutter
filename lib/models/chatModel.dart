class ChatModel{
  final String name;
  final String msg;
  final String time;
  final String avatar;

  ChatModel({required this.name, required this.msg, required this.time, required this.avatar});

}

List<ChatModel> dummyData = [
  ChatModel(
    name: 'Stephen Jones',
    msg: 'Man that design was so a...',
    time: '06:35',
    avatar: 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  ChatModel(
    name: 'Jessica (Manager)',
    msg: 'Hey Quick the deadline is n...',
    time: '06:05',
    avatar: 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  ChatModel(
    name: 'Ben (Junior App Dev)',
    msg: 'Bro the code is not working! Any...',
    time: '05:30',
    avatar: 'https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  ChatModel(
      name: 'Gourav',
      msg: 'Recommend a good VS Code Th...',
      time: '05:15',
      avatar: 'https://images.unsplash.com/photo-1655916028111-71ec009a656f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  ChatModel(
    name: 'Client-5',
    msg: 'Hey man, your work is done...',
    time: '04:45',
    avatar: 'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
];