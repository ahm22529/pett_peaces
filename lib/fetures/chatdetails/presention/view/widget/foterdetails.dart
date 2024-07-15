import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';

class foterdetailsmassage extends StatefulWidget {
  const foterdetailsmassage({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  State<foterdetailsmassage> createState() => _foterdetailsmassageState();
}

class _foterdetailsmassageState extends State<foterdetailsmassage> {
  final TextEditingController _textController = TextEditingController();

  final ImagePickerService imagePickerService = ImagePickerService();
  void _sendMessage() {
    // Implement sending message logic here
    _textController.clear();
    widget.scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
