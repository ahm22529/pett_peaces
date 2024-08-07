// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userentity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserEntityAdapter extends TypeAdapter<UserEntity> {
  @override
  final int typeId = 1;

  @override
  UserEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserEntity(
      massage: fields[7] as String,
      id: fields[0] as String,
      type: fields[1] as String,
      name: fields[2] as String,
      phone: fields[3] as String,
      email: fields[4] as String,
      image: fields[5] as String,
      token: fields[6] as String,
      is_plan_subscribe: fields[8] as bool,
      email_verified_at: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, UserEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.token)
      ..writeByte(7)
      ..write(obj.massage)
      ..writeByte(8)
      ..write(obj.is_plan_subscribe)
      ..writeByte(9)
      ..write(obj.email_verified_at);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
