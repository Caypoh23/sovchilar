// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserResponseModelAdapter extends TypeAdapter<UserResponseModel> {
  @override
  final int typeId = 2;

  @override
  UserResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserResponseModel(
      userId: fields[0] as int?,
      name: fields[1] as String?,
      age: fields[2] as int?,
      nationality: fields[3] as String?,
      marriageStatus: fields[4] as MaritalStatus?,
      children: fields[5] as bool?,
      fromAge: fields[6] as int?,
      tillAge: fields[7] as int?,
      telegram: fields[8] as String?,
      phoneNumber: fields[9] as String?,
      city: fields[10] as String?,
      country: fields[11] as String?,
      moreInfo: fields[12] as String?,
      moderated: fields[13] as bool?,
      gender: fields[14] as Gender?,
      id: fields[15] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, UserResponseModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.nationality)
      ..writeByte(4)
      ..write(obj.marriageStatus)
      ..writeByte(5)
      ..write(obj.children)
      ..writeByte(6)
      ..write(obj.fromAge)
      ..writeByte(7)
      ..write(obj.tillAge)
      ..writeByte(8)
      ..write(obj.telegram)
      ..writeByte(9)
      ..write(obj.phoneNumber)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.country)
      ..writeByte(12)
      ..write(obj.moreInfo)
      ..writeByte(13)
      ..write(obj.moderated)
      ..writeByte(14)
      ..write(obj.gender)
      ..writeByte(15)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserResponseListModelAdapter extends TypeAdapter<UserResponseListModel> {
  @override
  final int typeId = 3;

  @override
  UserResponseListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserResponseListModel(
      userList: (fields[0] as List?)?.cast<UserResponseModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserResponseListModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.userList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserResponseListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseModelImpl _$$UserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseModelImpl(
      userId: json['userId'] as int?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      nationality: json['nationality'] as String?,
      marriageStatus:
          $enumDecodeNullable(_$MaritalStatusEnumMap, json['marriageStatus']),
      children: json['children'] as bool?,
      fromAge: json['fromAge'] as int?,
      tillAge: json['tillAge'] as int?,
      telegram: json['telegram'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      moreInfo: json['moreInfo'] as String?,
      moderated: json['moderated'] as bool?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$UserResponseModelImplToJson(
        _$UserResponseModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'age': instance.age,
      'nationality': instance.nationality,
      'marriageStatus': _$MaritalStatusEnumMap[instance.marriageStatus],
      'children': instance.children,
      'fromAge': instance.fromAge,
      'tillAge': instance.tillAge,
      'telegram': instance.telegram,
      'phoneNumber': instance.phoneNumber,
      'city': instance.city,
      'country': instance.country,
      'moreInfo': instance.moreInfo,
      'moderated': instance.moderated,
      'gender': _$GenderEnumMap[instance.gender],
      'id': instance.id,
    };

const _$MaritalStatusEnumMap = {
  MaritalStatus.divorced: 'divorced',
  MaritalStatus.single: 'noMarriage',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

_$UserListModelImpl _$$UserListModelImplFromJson(Map<String, dynamic> json) =>
    _$UserListModelImpl(
      userList: (json['personals'] as List<dynamic>?)
          ?.map((e) => UserResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserListModelImplToJson(_$UserListModelImpl instance) =>
    <String, dynamic>{
      'personals': instance.userList,
    };
