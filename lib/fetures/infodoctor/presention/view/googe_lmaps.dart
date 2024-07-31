import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class googelmapsContiner extends StatelessWidget {
  const googelmapsContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: MediaQuery.of(context).size.width * .85,
      height: MediaQuery.of(context).size.height * .25,
      child: const GoogleMap(
        initialCameraPosition: CameraPosition(target: const LatLng(0, 0)),
      ),
    );
  }
}
