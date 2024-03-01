import 'package:freezed_annotation/freezed_annotation.dart';
part 'increment_and_decrement_qurrey.g.dart';

@JsonSerializable()
class IncrementAndDecrementQurrey {
  @JsonKey(name: 'productID')
  int? id;
  IncrementAndDecrementQurrey({
    this.id,
  });

  factory IncrementAndDecrementQurrey.fromJson(Map<String, dynamic> json) =>
      _$IncrementAndDecrementQurreyFromJson(json);

  Map<String, dynamic> toJson() => _$IncrementAndDecrementQurreyToJson(this);
}
