// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordModel _$ChangePasswordModelFromJson(Map<String, dynamic> json) =>
    ChangePasswordModel(
      newPassword: json['new_password'] as String?,
      reNewPassword: json['re_new_password'] as String?,
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$ChangePasswordModelToJson(
        ChangePasswordModel instance) =>
    <String, dynamic>{
      'new_password': instance.newPassword,
      're_new_password': instance.reNewPassword,
      'uuid': instance.uuid,
    };
