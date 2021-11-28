// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_def_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DefItem2 _$$_DefItem2FromJson(Map<String, dynamic> json) => _$_DefItem2(
      addr: json['addr'] as String?,
      code: json['code'] as String?,
      color: json['color'] as String?,
      inventory: json['inventory'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      name: json['name'] as String?,
      openTime: json['openTime'] as String?,
      price: json['price'] as String?,
      regDt: json['regDt'] as String?,
      tel: json['tel'] as String?,
    );

Map<String, dynamic> _$$_DefItem2ToJson(_$_DefItem2 instance) =>
    <String, dynamic>{
      'addr': instance.addr,
      'code': instance.code,
      'color': instance.color,
      'inventory': instance.inventory,
      'lat': instance.lat,
      'lng': instance.lng,
      'name': instance.name,
      'openTime': instance.openTime,
      'price': instance.price,
      'regDt': instance.regDt,
      'tel': instance.tel,
    };

_$_RemoteDef2 _$$_RemoteDef2FromJson(Map<String, dynamic> json) =>
    _$_RemoteDef2(
      page: json['page'] as int?,
      perPage: json['perPage'] as int?,
      totalCount: json['totalCount'] as int?,
      currentCount: json['currentCount'] as int?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DefItem2.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_RemoteDef2ToJson(_$_RemoteDef2 instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalCount': instance.totalCount,
      'currentCount': instance.currentCount,
      'data': instance.data,
    };
