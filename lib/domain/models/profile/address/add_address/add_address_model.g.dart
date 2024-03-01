// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressModel _$AddAddressModelFromJson(Map<String, dynamic> json) =>
    AddAddressModel(
      addressLine: json['address_line'] as String?,
      altPhone: json['alternative_phone'] as String?,
      district: json['district'] as String?,
      locality: json['locality'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      pincode: json['pincode'] as String?,
      id: json['state_id'] as int?,
      landmark: json['landmark'] as String?,
    );

Map<String, dynamic> _$AddAddressModelToJson(AddAddressModel instance) =>
    <String, dynamic>{
      'address_line': instance.addressLine,
      'alternative_phone': instance.altPhone,
      'district': instance.district,
      'locality': instance.locality,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'pincode': instance.pincode,
      'state_id': instance.id,
      'landmark': instance.landmark,
    };
