import 'package:freezed_annotation/freezed_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  String? uuid;
  Data({
    this.uuid,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
