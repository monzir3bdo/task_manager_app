import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_entity.freezed.dart';
part 'login_entity.g.dart';

@freezed
@injectable
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required int id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String gender,
    required String image,
  }) = _LoginEntity;
  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityFromJson(json);
}
