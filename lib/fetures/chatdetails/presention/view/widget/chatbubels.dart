import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String img;
  final String time;

  const ChatBubble(
      {required this.message, required this.time, required this.img});

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
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // لون الظل وشفافيته
                    spreadRadius: 2, // نطاق التوزيع
                    blurRadius: 4, // نطاق الضبابية
                    offset: Offset(0, 2), // تعيين موضع الظل بالنسبة للعنصر
                  ),
                ],
              ),
              child: Column(
                children: [
                  img.isEmpty
                      ? SizedBox()
                      : Image.network(
                          img,
                          width: 200,
                        ),
                  Text(
                    message,
                    style: AppStyles.styleMedium16(context)
                        .copyWith(color: Colors.black),
                  ),
                ],
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
