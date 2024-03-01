import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_qurrey.g.dart';

@JsonSerializable()
class OrderQrrey {
  @JsonKey(name: 'orderID')
  int? id;
  OrderQrrey({
    this.id,
  });

  factory OrderQrrey.fromJson(Map<String, dynamic> json) {
    return _$OrderQrreyFromJson(json);
  }
  Map<String, dynamic> toJson() => _$OrderQrreyToJson(this);
}
