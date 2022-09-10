// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spaceship_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpaceshipTypeAdapter extends TypeAdapter<SpaceshipType> {
  @override
  final int typeId = 1;

  @override
  SpaceshipType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 1:
        return SpaceshipType.Rebellion;
      default:
        return SpaceshipType.Rebellion;
    }
  }

  @override
  void write(BinaryWriter writer, SpaceshipType obj) {
    switch (obj) {
      case SpaceshipType.Rebellion:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpaceshipTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
