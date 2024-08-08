import 'package:hive_flutter/adapters.dart';
import 'package:pett_peaces/constant.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/sub_depart_entity.dart';

class LocaldatRepo {
  void saveuser(UserEntity user) async {
    var notesBox = Hive.box<UserEntity>(box);
    await notesBox.add(user);
  }

  void savedatapart(SubdepartEntity sub) async {
    var notesBox = Hive.box<SubdepartEntity>(boxdepart);

    // التحقق من وجود الكائن من قبل
    bool exists = notesBox.values.any((element) => element.idd == sub.idd);

    if (!exists) {
      await notesBox.add(sub);
    } else {
      // يمكنك تسجيل رسالة أو تنفيذ أي إجراء آخر إذا كان الكائن موجودًا بالفعل
      print("This item already exists in the box.");
    }
  }

  UserEntity getuser() {
    List<UserEntity>? notes;

    var notesBox = Hive.box<UserEntity>(box);

    notes = notesBox.values.toList();
    return notes[0];
  }

  List<SubdepartEntity> getdepaart() {
    List<SubdepartEntity>? notes;

    var notesBox = Hive.box<SubdepartEntity>(boxdepart);

    notes = notesBox.values.toList();
    return notes;
  }
}
