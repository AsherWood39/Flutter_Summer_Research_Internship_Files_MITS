import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_ui/Model/chat_model.dart';

// ignore: must_be_immutable
class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int? selectedIndex;

  List<ChatModel> myChats = <ChatModel>[
    ChatModel(
        profileImage: 'asset/p2.jpeg',
        profileName: 'Noah Taylor',
        messagePreview: 'Work to be done',
        messageTime: '7:30 pm',
        messageCount: '4'),
    ChatModel(
        profileImage: 'asset/p4.jpeg',
        profileName: 'Emily Johnson',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '6:49 pm',
        messageCount: '0'),
    ChatModel(
        profileImage: 'asset/p3.jpeg',
        profileName: 'Liam Davis',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '6:40 pm',
        messageCount: '0'),
    ChatModel(
        profileImage: 'asset/p5.jpeg',
        profileName: 'Isabella White',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '6:30 pm',
        messageCount: '0'),
    ChatModel(
        profileImage: 'asset/p6.jpeg',
        profileName: 'Ava Thomas',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '6:22 pm',
        messageCount: '0'),
    ChatModel(
        profileImage: 'asset/p9.jpeg',
        profileName: 'Project Team - Alpha',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '5:59 pm',
        messageCount: '112'),
    ChatModel(
        profileImage: 'asset/images.jpeg',
        profileName: 'John Doe',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '4:59 pm',
        messageCount: '0'),
    ChatModel(
        profileImage: 'asset/p7.jpeg',
        profileName: 'Jack Wright',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '4:58 pm',
        messageCount: '0'),
    ChatModel(
        profileImage: 'asset/p8.jpeg',
        profileName: 'Daniel Young',
        messagePreview:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        messageTime: '12:45 pm',
        messageCount: '25'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'WhatsApp',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.qr_code_scanner_sharp,
                    color: Colors.grey[400],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.grey[400],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_sharp,
                    color: Colors.grey[400],
                  ))
            ]),
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 2.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200),
                        borderSide: BorderSide.none),
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFF8E8E8E),
                    ),
                    hintText: ('Ask Meta AI or Search'),
                    hintStyle: const TextStyle(
                      color: Color(0xFF8E8E8E),
                      fontSize: 20.0,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF2C2C2C)),
              ),
            ),
            SizedBox(
              height: 1000,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    bool isSelected = selectedIndex == index;
                    return ListTile(
                      onTap: () {
                        setState(() {
                          selectedIndex = isSelected ? null : index;
                        });
                      },
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(myChats[index].profileImage),
                        radius: 24.0,
                      ),
                      title: Text(myChats[index].profileName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          )),
                      subtitle: Text(
                        myChats[index].messagePreview,
                        style: const TextStyle(
                            color: Color(0xFF8E8E8E), fontSize: 15.0),
                        overflow: TextOverflow
                            .ellipsis, // adds "..." at the end if text is too long
                        maxLines: 1, // ensures it's only one line
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            myChats[index].messageTime,
                            style: TextStyle(
                              fontSize: 12,
                              color: myChats[index].messageCount == '0'
                                  ? const Color(0xFF8E8E8E)
                                  : Colors.green,
                            ),
                          ),
                          if (isSelected)
                            Icon(
                              Icons.notifications_off_sharp,
                              color: Colors.grey[400],
                            ),
                          if (myChats[index].messageCount != '0') ...[
                            const SizedBox(height: 4.0),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                myChats[index].messageCount,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.transparent,
                      height: 0,
                    );
                  },
                  itemCount: myChats.length),
            ),
          ],
        ),
      ),
    );
  }
}
