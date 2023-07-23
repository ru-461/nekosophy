import 'package:freezed_annotation/freezed_annotation.dart';

part 'meigen.freezed.dart';
part 'meigen.g.dart';

@freezed
class Meigen with _$Meigen {
  factory Meigen({required String meigen, required String author}) = _Meigen;

  factory Meigen.fromJson(Map<String, dynamic> json) => _$MeigenFromJson(json);
}
