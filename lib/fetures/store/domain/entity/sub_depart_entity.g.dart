// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_depart_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubdepartAdapter extends TypeAdapter<SubdepartEntity> {
  @override
  final int typeId = 2;

  @override
  SubdepartEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubdepartEntity(
      idd: fields[1] as int,
      namee: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SubdepartEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.idd)
      ..writeByte(2)
      ..write(obj.namee);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubdepartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
