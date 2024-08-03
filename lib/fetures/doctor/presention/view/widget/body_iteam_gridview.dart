import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/info_doctor.dart';

class BodyContinerDoctor extends StatelessWidget {
  const BodyContinerDoctor({
    super.key,
    required this.coatch,
  });
  final DoctorEntitydetails coatch;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            coatch.imagee,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              }
            },
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
              return Center(
                child: Icon(Icons.error),
              );
            },
          ),
        ),
        Positioned(
          left: 10,
          bottom: 40,
          child: Image.asset("Asset/image/Frame 1000004215.png"),
        ),
        Positioned(
          bottom: 0,
          child: InfoDoctore(
            coatch: coatch,
          ),
        ),
      ],
    );
  }
}
