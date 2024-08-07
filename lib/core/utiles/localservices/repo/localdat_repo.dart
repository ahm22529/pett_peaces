import 'package:hive_flutter/adapters.dart';
import 'package:pett_peaces/constant.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class LocaldatRepo {
  void savedata(UserEntity user) async {
    var notesBox = Hive.box<UserEntity>(box);
    await notesBox.add(user);
  }

  UserEntity getuser() {
    List<UserEntity>? notes;
  
      var notesBox = Hive.box<UserEntity>(box);

      notes = notesBox.values.toList();
      return notes[0];
    
  }
}
