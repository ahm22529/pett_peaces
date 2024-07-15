import 'package:flutter/material.dart';

class IteamStore extends StatelessWidget {
  const IteamStore({super.key});
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black12, width: 1),
        ),
        child: const bodyiteamstore(),
      ),
    );
  }
}

// ignore: camel_case_types
class bodyiteamstore extends StatelessWidget {
  const bodyiteamstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          const Text(
            "طعام يوناني الأصل مستورد",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Image.asset("Asset/image/20802-removebg-preview 1.png"),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width * .5,
            decoration: BoxDecoration(
              color: const Color(0xffF78E32).withOpacity(.3),
              borderRadius: BorderRadius.circular(9),
            ),
            child: const infoiteamstore(),
          ),
        ],
      ),
    );
  }
}

class infoiteamstore extends StatelessWidget {
  const infoiteamstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "299\$",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color(0xffF78E32),
                  fontSize: 18,
                ),
              ),
              Text(
                "120",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Image.asset("Asset/image/add.png")
        ],
      ),



      
    );
  }
}
