import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_def.freezed.dart';

part 'remote_def.g.dart';

@freezed
class DefItem with _$DefItem {
  factory DefItem({
    @JsonKey(name: "명칭") String? name,
    @JsonKey(name: "주소") String? address,
    @JsonKey(name: "전화번호") String? phone,
    @JsonKey(name: "입고량") String? input,
    @JsonKey(name: "재고량") String? stock,
    @JsonKey(name: "위도") String? lat, //위도
    @JsonKey(name: "경도") String? lang, // 경도
    @JsonKey(name: "데이터기준일") String? date,
  }) = _DefItem;
  factory DefItem.fromJson(Map<String, dynamic> json) => _$DefItemFromJson(json);
}

@freezed
class RemoteDef with _$RemoteDef {
  factory RemoteDef({
    int? page,
    int? perPage,
    int? totalCount,
    int? currentCount,
    @Default([]) List<DefItem>? data,
  }) = _RemoteDef;

  factory RemoteDef.fromJson(Map<String, dynamic> json) => _$RemoteDefFromJson(json);
}
