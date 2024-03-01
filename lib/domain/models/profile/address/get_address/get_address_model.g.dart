// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddressModel _$GetAddressModelFromJson(Map<String, dynamic> json) =>
    GetAddressModel(
      name: json['name'] as String?,
      userId: json['user_id'] as int?,
      addressLine: json['address_line'] as String?,
      altPhoneNumber: json['alternative_phone'] as String?,
      district: json['district'] as String?,
      id: json['id'] as int?,
      isDefault: json['is_default'] as bool?,
      landmark: json['landmark'] as String?,
      locality: json['locality'] as String?,
      phoneNumber: json['phone_number'] as String?,
      pincode: json['pincode'] as String?,
      state: json['state'] as String?,
      stateId: json['state_id'] as int?,
    );

Map<String, dynamic> _$GetAddressModelToJson(GetAddressModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'user_id': instance.userId,
      'phone_number': instance.phoneNumber,
      'pincode': instance.pincode,
      'locality': instance.locality,
      'address_line': instance.addressLine,
      'district': instance.district,
      'state_id': instance.stateId,
      'state': instance.state,
      'landmark': instance.landmark,
      'alternative_phone': instance.altPhoneNumber,
      'is_default': instance.isDefault,
    };
