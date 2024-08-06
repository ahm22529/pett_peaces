import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/viedo_call.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/voic_call.dart';

class appbardetails extends StatelessWidget {
  const appbardetails({
    super.key,
    required this.img,
    required this.name,
    required this.chael,
    required this.token,
  });
  final String img, name, chael, token;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xffF78E32),
      title: FittedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(img),
              ),
              const SizedBox(width: 5),
              Text(
                name,
                style: AppStyles.styleMedium16(context).copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AgoraVideoCallWidget(
                      token: token,
                      channel: chael,
                    )),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset("Asset/image/videocall.png"),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AgoraVoiceCallWidget(
                      token: token,
                      channel: chael,
                    )),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Image.asset("Asset/image/callcha.png"),
          ),
        ),
      ],
    );
  }
}
