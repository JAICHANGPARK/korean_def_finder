// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_def.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefItem _$DefItemFromJson(Map<String, dynamic> json) {
  return _DefItem.fromJson(json);
}

/// @nodoc
class _$DefItemTearOff {
  const _$DefItemTearOff();

  _DefItem call(
      {@JsonKey(name: "명칭") String? name,
      @JsonKey(name: "주소") String? address,
      @JsonKey(name: "전화번호") String? phone,
      @JsonKey(name: "입고량") String? input,
      @JsonKey(name: "재고량") String? stock,
      @JsonKey(name: "위도") String? lat,
      @JsonKey(name: "경도") String? lang,
      @JsonKey(name: "데이터기준일") String? date,
      @JsonKey(name: "영업시간") String? businessTime}) {
    return _DefItem(
      name: name,
      address: address,
      phone: phone,
      input: input,
      stock: stock,
      lat: lat,
      lang: lang,
      date: date,
      businessTime: businessTime,
    );
  }

  DefItem fromJson(Map<String, Object?> json) {
    return DefItem.fromJson(json);
  }
}

/// @nodoc
const $DefItem = _$DefItemTearOff();

/// @nodoc
mixin _$DefItem {
  @JsonKey(name: "명칭")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "주소")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "전화번호")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "입고량")
  String? get input => throw _privateConstructorUsedError;
  @JsonKey(name: "재고량")
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "위도")
  String? get lat => throw _privateConstructorUsedError; //위도
  @JsonKey(name: "경도")
  String? get lang => throw _privateConstructorUsedError; // 경도
  @JsonKey(name: "데이터기준일")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "영업시간")
  String? get businessTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefItemCopyWith<DefItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefItemCopyWith<$Res> {
  factory $DefItemCopyWith(DefItem value, $Res Function(DefItem) then) =
      _$DefItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "명칭") String? name,
      @JsonKey(name: "주소") String? address,
      @JsonKey(name: "전화번호") String? phone,
      @JsonKey(name: "입고량") String? input,
      @JsonKey(name: "재고량") String? stock,
      @JsonKey(name: "위도") String? lat,
      @JsonKey(name: "경도") String? lang,
      @JsonKey(name: "데이터기준일") String? date,
      @JsonKey(name: "영업시간") String? businessTime});
}

/// @nodoc
class _$DefItemCopyWithImpl<$Res> implements $DefItemCopyWith<$Res> {
  _$DefItemCopyWithImpl(this._value, this._then);

  final DefItem _value;
  // ignore: unused_field
  final $Res Function(DefItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? input = freezed,
    Object? stock = freezed,
    Object? lat = freezed,
    Object? lang = freezed,
    Object? date = freezed,
    Object? businessTime = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      businessTime: businessTime == freezed
          ? _value.businessTime
          : businessTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DefItemCopyWith<$Res> implements $DefItemCopyWith<$Res> {
  factory _$DefItemCopyWith(_DefItem value, $Res Function(_DefItem) then) =
      __$DefItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "명칭") String? name,
      @JsonKey(name: "주소") String? address,
      @JsonKey(name: "전화번호") String? phone,
      @JsonKey(name: "입고량") String? input,
      @JsonKey(name: "재고량") String? stock,
      @JsonKey(name: "위도") String? lat,
      @JsonKey(name: "경도") String? lang,
      @JsonKey(name: "데이터기준일") String? date,
      @JsonKey(name: "영업시간") String? businessTime});
}

/// @nodoc
class __$DefItemCopyWithImpl<$Res> extends _$DefItemCopyWithImpl<$Res>
    implements _$DefItemCopyWith<$Res> {
  __$DefItemCopyWithImpl(_DefItem _value, $Res Function(_DefItem) _then)
      : super(_value, (v) => _then(v as _DefItem));

  @override
  _DefItem get _value => super._value as _DefItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? input = freezed,
    Object? stock = freezed,
    Object? lat = freezed,
    Object? lang = freezed,
    Object? date = freezed,
    Object? businessTime = freezed,
  }) {
    return _then(_DefItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      businessTime: businessTime == freezed
          ? _value.businessTime
          : businessTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefItem implements _DefItem {
  _$_DefItem(
      {@JsonKey(name: "명칭") this.name,
      @JsonKey(name: "주소") this.address,
      @JsonKey(name: "전화번호") this.phone,
      @JsonKey(name: "입고량") this.input,
      @JsonKey(name: "재고량") this.stock,
      @JsonKey(name: "위도") this.lat,
      @JsonKey(name: "경도") this.lang,
      @JsonKey(name: "데이터기준일") this.date,
      @JsonKey(name: "영업시간") this.businessTime});

  factory _$_DefItem.fromJson(Map<String, dynamic> json) =>
      _$$_DefItemFromJson(json);

  @override
  @JsonKey(name: "명칭")
  final String? name;
  @override
  @JsonKey(name: "주소")
  final String? address;
  @override
  @JsonKey(name: "전화번호")
  final String? phone;
  @override
  @JsonKey(name: "입고량")
  final String? input;
  @override
  @JsonKey(name: "재고량")
  final String? stock;
  @override
  @JsonKey(name: "위도")
  final String? lat;
  @override //위도
  @JsonKey(name: "경도")
  final String? lang;
  @override // 경도
  @JsonKey(name: "데이터기준일")
  final String? date;
  @override
  @JsonKey(name: "영업시간")
  final String? businessTime;

  @override
  String toString() {
    return 'DefItem(name: $name, address: $address, phone: $phone, input: $input, stock: $stock, lat: $lat, lang: $lang, date: $date, businessTime: $businessTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DefItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.businessTime, businessTime) ||
                other.businessTime == businessTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, phone, input,
      stock, lat, lang, date, businessTime);

  @JsonKey(ignore: true)
  @override
  _$DefItemCopyWith<_DefItem> get copyWith =>
      __$DefItemCopyWithImpl<_DefItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefItemToJson(this);
  }
}

abstract class _DefItem implements DefItem {
  factory _DefItem(
      {@JsonKey(name: "명칭") String? name,
      @JsonKey(name: "주소") String? address,
      @JsonKey(name: "전화번호") String? phone,
      @JsonKey(name: "입고량") String? input,
      @JsonKey(name: "재고량") String? stock,
      @JsonKey(name: "위도") String? lat,
      @JsonKey(name: "경도") String? lang,
      @JsonKey(name: "데이터기준일") String? date,
      @JsonKey(name: "영업시간") String? businessTime}) = _$_DefItem;

  factory _DefItem.fromJson(Map<String, dynamic> json) = _$_DefItem.fromJson;

  @override
  @JsonKey(name: "명칭")
  String? get name;
  @override
  @JsonKey(name: "주소")
  String? get address;
  @override
  @JsonKey(name: "전화번호")
  String? get phone;
  @override
  @JsonKey(name: "입고량")
  String? get input;
  @override
  @JsonKey(name: "재고량")
  String? get stock;
  @override
  @JsonKey(name: "위도")
  String? get lat;
  @override //위도
  @JsonKey(name: "경도")
  String? get lang;
  @override // 경도
  @JsonKey(name: "데이터기준일")
  String? get date;
  @override
  @JsonKey(name: "영업시간")
  String? get businessTime;
  @override
  @JsonKey(ignore: true)
  _$DefItemCopyWith<_DefItem> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoteDef _$RemoteDefFromJson(Map<String, dynamic> json) {
  return _RemoteDef.fromJson(json);
}

/// @nodoc
class _$RemoteDefTearOff {
  const _$RemoteDefTearOff();

  _RemoteDef call(
      {int? page,
      int? perPage,
      int? totalCount,
      int? currentCount,
      List<DefItem>? data = const []}) {
    return _RemoteDef(
      page: page,
      perPage: perPage,
      totalCount: totalCount,
      currentCount: currentCount,
      data: data,
    );
  }

  RemoteDef fromJson(Map<String, Object?> json) {
    return RemoteDef.fromJson(json);
  }
}

/// @nodoc
const $RemoteDef = _$RemoteDefTearOff();

/// @nodoc
mixin _$RemoteDef {
  int? get page => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get currentCount => throw _privateConstructorUsedError;
  List<DefItem>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteDefCopyWith<RemoteDef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteDefCopyWith<$Res> {
  factory $RemoteDefCopyWith(RemoteDef value, $Res Function(RemoteDef) then) =
      _$RemoteDefCopyWithImpl<$Res>;
  $Res call(
      {int? page,
      int? perPage,
      int? totalCount,
      int? currentCount,
      List<DefItem>? data});
}

/// @nodoc
class _$RemoteDefCopyWithImpl<$Res> implements $RemoteDefCopyWith<$Res> {
  _$RemoteDefCopyWithImpl(this._value, this._then);

  final RemoteDef _value;
  // ignore: unused_field
  final $Res Function(RemoteDef) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? totalCount = freezed,
    Object? currentCount = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCount: currentCount == freezed
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DefItem>?,
    ));
  }
}

/// @nodoc
abstract class _$RemoteDefCopyWith<$Res> implements $RemoteDefCopyWith<$Res> {
  factory _$RemoteDefCopyWith(
          _RemoteDef value, $Res Function(_RemoteDef) then) =
      __$RemoteDefCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? page,
      int? perPage,
      int? totalCount,
      int? currentCount,
      List<DefItem>? data});
}

/// @nodoc
class __$RemoteDefCopyWithImpl<$Res> extends _$RemoteDefCopyWithImpl<$Res>
    implements _$RemoteDefCopyWith<$Res> {
  __$RemoteDefCopyWithImpl(_RemoteDef _value, $Res Function(_RemoteDef) _then)
      : super(_value, (v) => _then(v as _RemoteDef));

  @override
  _RemoteDef get _value => super._value as _RemoteDef;

  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? totalCount = freezed,
    Object? currentCount = freezed,
    Object? data = freezed,
  }) {
    return _then(_RemoteDef(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCount: currentCount == freezed
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DefItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteDef implements _RemoteDef {
  _$_RemoteDef(
      {this.page,
      this.perPage,
      this.totalCount,
      this.currentCount,
      this.data = const []});

  factory _$_RemoteDef.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteDefFromJson(json);

  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final int? totalCount;
  @override
  final int? currentCount;
  @JsonKey(defaultValue: const [])
  @override
  final List<DefItem>? data;

  @override
  String toString() {
    return 'RemoteDef(page: $page, perPage: $perPage, totalCount: $totalCount, currentCount: $currentCount, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteDef &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentCount, currentCount) ||
                other.currentCount == currentCount) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalCount,
      currentCount, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$RemoteDefCopyWith<_RemoteDef> get copyWith =>
      __$RemoteDefCopyWithImpl<_RemoteDef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteDefToJson(this);
  }
}

abstract class _RemoteDef implements RemoteDef {
  factory _RemoteDef(
      {int? page,
      int? perPage,
      int? totalCount,
      int? currentCount,
      List<DefItem>? data}) = _$_RemoteDef;

  factory _RemoteDef.fromJson(Map<String, dynamic> json) =
      _$_RemoteDef.fromJson;

  @override
  int? get page;
  @override
  int? get perPage;
  @override
  int? get totalCount;
  @override
  int? get currentCount;
  @override
  List<DefItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$RemoteDefCopyWith<_RemoteDef> get copyWith =>
      throw _privateConstructorUsedError;
}
