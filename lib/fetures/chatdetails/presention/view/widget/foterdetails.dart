import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';

class foterdetailsmassage extends StatefulWidget {
  const foterdetailsmassage({
    super.key,
    required this.scrollController,
    required this.onChanged,
    required this.onPressed,
    required this.textController,
    required this.onAttachmentPicked,
  });

  final ScrollController scrollController;
  final TextEditingController textController;
  final void Function(String)? onChanged;
  final void Function()? onPressed;
  final void Function(File) onAttachmentPicked;

  @override
  State<foterdetailsmassage> createState() => _foterdetailsmassageState();
}

class _foterdetailsmassageState extends State<foterdetailsmassage> {
  final ImagePickerService imagePickerService = ImagePickerService();

  void _pickAttachment() async {
    Navigator.pop(context);
    final file =
        await imagePickerService.pickImages(); // Add your implementation here
    if (file != null) {
      widget.onAttachmentPicked(file[0]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Image.asset("Asset/image/Send.png"), // Send icon
          onPressed: widget.onPressed,
        ),
        Expanded(
          child: TextField(
            onChanged: widget.onChanged,
            controller: widget.textController,
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
                          imagePickerService
                              .openCamera(); // Handle camera opening
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.photo_library),
                        title: Text('Choose from gallery'),
                        onTap: () {
                          _pickAttachment(); // Handle gallery opening
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
