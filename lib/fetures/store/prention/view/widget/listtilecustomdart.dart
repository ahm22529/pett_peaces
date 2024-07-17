import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/box/presention/view/box.dart';

class listtilecustomcard extends StatelessWidget {
  const listtilecustomcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Text(
            'طعام يوناني مستورد\nأصيل فئة اولي',
            style: TextStyle(
              fontFamily: 'Changa',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF020202),
              height: 1.4,
            ),
            textAlign: TextAlign.right,
          ),
          Text('\$250',
              style: TextStyle(
                fontFamily: 'Changa',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xFFF78E32),
                height: 1.4,
              )),
        ],
      ),
      trailing: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xFFF78E32),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (builder) => Box())),
            child: Icon(
              Icons
                  .shopping_cart_outlined, // Example icon, replace with your asset path if needed
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
