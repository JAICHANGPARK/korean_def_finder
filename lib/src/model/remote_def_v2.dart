import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_def_v2.freezed.dart';

part 'remote_def_v2.g.dart';

@freezed
class DefItem2 with _$DefItem2 {
  factory DefItem2({
    @JsonKey(name: "addr") String? addr,
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "inventory") String? inventory,
    @JsonKey(name: "lat") String? lat, //위도
    @JsonKey(name: "lng") String? lng, // 경도
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "openTime") String? openTime,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "regDt") String? regDt,
    @JsonKey(name: "tel") String? tel,
  }) = _DefItem2;

  factory DefItem2.fromJson(Map<String, dynamic> json) => _$DefItem2FromJson(json);
}

@freezed
class RemoteDef2 with _$RemoteDef2 {
  factory RemoteDef2({
    int? page,
    int? perPage,
    int? totalCount,
    int? currentCount,
    @Default([]) List<DefItem2>? data,
  }) = _RemoteDef2;

  factory RemoteDef2.fromJson(Map<String, dynamic> json) => _$RemoteDef2FromJson(json);
}
