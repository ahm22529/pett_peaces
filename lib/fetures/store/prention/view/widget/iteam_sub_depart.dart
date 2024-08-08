import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pett_peaces/constant.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/store/domain/entity/sub_depart_entity.dart';

class IteamSubDepart extends StatelessWidget {
  final SubdepartEntity subDepartEntity; // إضافة الـ SubdepartEntity
  final VoidCallback onDelete; // إضافة الـ Callback لحذف العنصر

  const IteamSubDepart({
    super.key,
    required this.subDepartEntity,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          children: [
            Text(
              subDepartEntity.namee, // عرض اسم التصنيف الفرعي
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Colors.white),
            ),
            GestureDetector(
              onTap: () async {
                // حذف العنصر من Hive
                var box = Hive.box<SubdepartEntity>(boxdepart);
                var key = box.keys.firstWhere(
                  (k) => box.get(k)!.idd == subDepartEntity.idd,
                  orElse: () => null,
                );
                if (key != null) {
                  await box.delete(key);
                }

                // استدعاء الـ Callback لحذف العنصر من UI
                onDelete();
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
