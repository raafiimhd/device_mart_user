import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Data? data;
  String? error;
  String? message;
  @JsonKey(name: 'status-code')
  int? statusCode;

  Profile({this.data, this.error, this.message, this.statusCode});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return _$ProfileFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
