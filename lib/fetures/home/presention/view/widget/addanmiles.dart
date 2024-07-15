import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class iteamadd extends StatefulWidget {
  const iteamadd({
    Key? key,
  
  }) : super(key: key);



  @override
  State<iteamadd> createState() => _IteamChangeState();
}

class _IteamChangeState extends State<iteamadd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: DottedBorder(
        dashPattern: [8, 4],
        color:  const Color(0xffF78E32),
        strokeWidth: 1,
        child: Container(
         // Adjusted width to make it rectangular
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 70.0),
          
            child: Center(
              child: Image.asset("Asset/image/add.png", fit: BoxFit.contain),
            ),
        
        ),
      ),
    );
  }
}
