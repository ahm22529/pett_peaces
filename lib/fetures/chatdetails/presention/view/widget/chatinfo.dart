import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';

  final ScrollController _controller = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final ImagePickerService imagePickerService = ImagePickerService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xffF78E32),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
            ),
            SizedBox(width: 10),
            const Text('Chat'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 18.0,
            ),
            child: Image.asset("Asset/image/videocall.png"),
          ),
          SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, left: 20),
            child: Image.asset("Asset/image/callcha.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              controller: _controller,
              itemCount: 10, // Number of messages for example
              itemBuilder: (context, index) {
                DateTime now = DateTime.now();
                String formattedTime =
                    "${now.hour}:${now.minute}:${now.second}"; // Time format

                return index % 2 == 0
                    ? ChatBubble(
                        message: 'Message from user $index',
                        time: formattedTime,
                      )
                    : ChatBubbleForFriend(
                        message: 'Message from friend $index',
                        time: formattedTime,
                      );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset("Asset/image/Send.png"), // Send icon
                  onPressed: () {
                    // Implement send message logic here
                    _sendMessage();
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("Asset/image/emoj.png"),
                      hintText: 'Send Message',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    textAlign: TextAlign.left,
                    onSubmitted: (data) {
                      _sendMessage();
                    },
                  ),
                ),
                IconButton(
                  icon: Image.asset("Asset/image/Cmera.png"), // Camera icon
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.camera_alt),
                                title: Text('Take a picture'),
                                onTap: () {
                                  // Add your logic to open the camera
                                  imagePickerService.openCamera();
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_library),
                                title: Text('Choose from gallery'),
                                onTap: () {
                                  // Add your logic to open the gallery
                                  imagePickerService.pickImages();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _sendMessage() {
    // Implement sending message logic here
    _textController.clear();
    _controller.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;

  const ChatBubble({required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xff000000).withOpacity(.15),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Text(
                message,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 4),
            Text(
              time,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  final String message;
  final String time;

  const ChatBubbleForFriend({required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF78E32),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 4),
            Text(
              time,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
