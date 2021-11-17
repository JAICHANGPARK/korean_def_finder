// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DefItem _$$_DefItemFromJson(Map<String, dynamic> json) => _$_DefItem(
      name: json['명칭'] as String?,
      address: json['주소'] as String?,
      phone: json['전화번호'] as String?,
      input: json['입고량'] as String?,
      stock: json['재고량'] as String?,
      lat: json['위도'] as String?,
      lang: json['경도'] as String?,
      date: json['데이터기준일'] as String?,
    );

Map<String, dynamic> _$$_DefItemToJson(_$_DefItem instance) =>
    <String, dynamic>{
      '명칭': instance.name,
      '주소': instance.address,
      '전화번호': instance.phone,
      '입고량': instance.input,
      '재고량': instance.stock,
      '위도': instance.lat,
      '경도': instance.lang,
      '데이터기준일': instance.date,
    };

_$_RemoteDef _$$_RemoteDefFromJson(Map<String, dynamic> json) => _$_RemoteDef(
      page: json['page'] as int?,
      perPage: json['perPage'] as int?,
      totalCount: json['totalCount'] as int?,
      currentCount: json['currentCount'] as int?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DefItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_RemoteDefToJson(_$_RemoteDef instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalCount': instance.totalCount,
      'currentCount': instance.currentCount,
      'data': instance.data,
    };
