// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meigen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meigen _$MeigenFromJson(Map<String, dynamic> json) {
  return _Meigen.fromJson(json);
}

/// @nodoc
mixin _$Meigen {
  String get meigen => throw _privateConstructorUsedError;
  String get auther => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeigenCopyWith<Meigen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeigenCopyWith<$Res> {
  factory $MeigenCopyWith(Meigen value, $Res Function(Meigen) then) =
      _$MeigenCopyWithImpl<$Res, Meigen>;
  @useResult
  $Res call({String meigen, String auther});
}

/// @nodoc
class _$MeigenCopyWithImpl<$Res, $Val extends Meigen>
    implements $MeigenCopyWith<$Res> {
  _$MeigenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meigen = null,
    Object? auther = null,
  }) {
    return _then(_value.copyWith(
      meigen: null == meigen
          ? _value.meigen
          : meigen // ignore: cast_nullable_to_non_nullable
              as String,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeigenCopyWith<$Res> implements $MeigenCopyWith<$Res> {
  factory _$$_MeigenCopyWith(_$_Meigen value, $Res Function(_$_Meigen) then) =
      __$$_MeigenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String meigen, String auther});
}

/// @nodoc
class __$$_MeigenCopyWithImpl<$Res>
    extends _$MeigenCopyWithImpl<$Res, _$_Meigen>
    implements _$$_MeigenCopyWith<$Res> {
  __$$_MeigenCopyWithImpl(_$_Meigen _value, $Res Function(_$_Meigen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meigen = null,
    Object? auther = null,
  }) {
    return _then(_$_Meigen(
      meigen: null == meigen
          ? _value.meigen
          : meigen // ignore: cast_nullable_to_non_nullable
              as String,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meigen implements _Meigen {
  _$_Meigen({required this.meigen, required this.auther});

  factory _$_Meigen.fromJson(Map<String, dynamic> json) =>
      _$$_MeigenFromJson(json);

  @override
  final String meigen;
  @override
  final String auther;

  @override
  String toString() {
    return 'Meigen(meigen: $meigen, auther: $auther)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meigen &&
            (identical(other.meigen, meigen) || other.meigen == meigen) &&
            (identical(other.auther, auther) || other.auther == auther));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meigen, auther);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeigenCopyWith<_$_Meigen> get copyWith =>
      __$$_MeigenCopyWithImpl<_$_Meigen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeigenToJson(
      this,
    );
  }
}

abstract class _Meigen implements Meigen {
  factory _Meigen(
      {required final String meigen, required final String auther}) = _$_Meigen;

  factory _Meigen.fromJson(Map<String, dynamic> json) = _$_Meigen.fromJson;

  @override
  String get meigen;
  @override
  String get auther;
  @override
  @JsonKey(ignore: true)
  _$$_MeigenCopyWith<_$_Meigen> get copyWith =>
      throw _privateConstructorUsedError;
}
