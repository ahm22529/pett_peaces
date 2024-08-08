import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/box/presention/view/box.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ListtileCustomcard extends StatelessWidget {
  final UserEntity userEntitymodel;
  const ListtileCustomcard({
    super.key,
    required this.producEntity,
    required this.userEntitymodel,
  });
  final ProducEntity producEntity;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Titel_List_tile(producEntity: producEntity),
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
                context,
                MaterialPageRoute(
                    builder: (builder) => Box(
                          userEntitymodel: userEntitymodel,
                        ))),
            child: const Icon(
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

class Titel_List_tile extends StatelessWidget {
  const Titel_List_tile({
    super.key,
    required this.producEntity,
  });

  final ProducEntity producEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                producEntity.nameof,
                style: const TextStyle(
                  fontFamily: 'Changa',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color(0xFF020202),
                  height: 1.4,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Text(producEntity.prices,
                style: const TextStyle(
                  fontFamily: 'Changa',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFFF78E32),
                  height: 1.4,
                )),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          producEntity.oldprice,
          style: AppStyles.styleRegular14(context),
        )
      ],
    );
  }
}
