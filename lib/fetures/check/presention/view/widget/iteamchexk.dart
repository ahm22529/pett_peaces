import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/check/data/model/iteammodel.dart';

class iteamcheck extends StatelessWidget {
  const iteamcheck({super.key, required this.iteam});
  final iteamchecmmmmkmodel iteam;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Image.asset(
                    iteam.image,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    iteam.titel,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF020202),
                    ),
                  ),
                  Text(
                    iteam.volum,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF545454),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    iteam.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFF78E32),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
