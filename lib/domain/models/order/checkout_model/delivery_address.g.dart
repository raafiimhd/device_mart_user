// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) =>
    DeliveryAddress(
      addressLine: json['address_line'] as String?,
      alternativePhone: json['alternative_phone'] as String?,
      district: json['district'] as String?,
      id: json['id'] as int?,
      isDefault: json['is_default'] as bool?,
      landmark: json['landmark'] as String?,
      locality: json['locality'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      pincode: json['pincode'] as String?,
      state: json['state'] as String?,
      stateId: json['state_id'] as int?,
      userId: json['user_id'] as int?,
    );

Map<String, dynamic> _$DeliveryAddressToJson(DeliveryAddress instance) =>
    <String, dynamic>{
      'address_line': instance.addressLine,
      'alternative_phone': instance.alternativePhone,
      'district': instance.district,
      'id': instance.id,
      'is_default': instance.isDefault,
      'landmark': instance.landmark,
      'locality': instance.locality,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'pincode': instance.pincode,
      'state': instance.state,
      'state_id': instance.stateId,
      'user_id': instance.userId,
    };
