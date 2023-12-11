// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marital_status_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MaritalStatusAdapter extends TypeAdapter<MaritalStatus> {
  @override
  final int typeId = 0;

  @override
  MaritalStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MaritalStatus.divorced;
      case 1:
        return MaritalStatus.single;
      default:
        return MaritalStatus.divorced;
    }
  }

  @override
  void write(BinaryWriter writer, MaritalStatus obj) {
    switch (obj) {
      case MaritalStatus.divorced:
        writer.writeByte(0);
        break;
      case MaritalStatus.single:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MaritalStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
