
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/form_singup.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/header.dart';
class BodySingUp extends StatefulWidget {
  const BodySingUp({super.key});

  @override
  State<BodySingUp> createState() => _BodySingUpState();
}

class _BodySingUpState extends State<BodySingUp> {
  
 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .09),
          const Header(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:FormSingup()
          ),
         
        ],
      ),
    );
  }
}


