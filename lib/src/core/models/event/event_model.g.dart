// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      url: json['url'] as String?,
      start: fromJsonDate(json['start'] as num?),
      name: json['name'] as String?,
      id: json['id'] as int?,
      end: fromJsonDate(json['end'] as num?),
      status: $enumDecodeNullable(_$EventStatusEnumMap, json['status']),
      description: json['description'] as String?,
      vat: json['vat'] as num?,
      rating: json['rating'] as num?,
      imageSmall: json['image_small'] == null
          ? null
          : ImageModel.fromJson(json['image_small'] as Map<String, dynamic>),
      imageBig: json['image_big'] == null
          ? null
          : ImageModel.fromJson(json['image_big'] as Map<String, dynamic>),
      imageFull: json['image_full'] == null
          ? null
          : ImageModel.fromJson(json['image_full'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('description', instance.description);
  writeNotNull('url', instance.url);
  writeNotNull('rating', instance.rating);
  writeNotNull('start', instance.start?.toIso8601String());
  writeNotNull('end', instance.end?.toIso8601String());
  writeNotNull('vat', instance.vat);
  writeNotNull('status', _$EventStatusEnumMap[instance.status]);
  writeNotNull('image_full', instance.imageFull);
  writeNotNull('image_small', instance.imageSmall);
  writeNotNull('image_big', instance.imageBig);
  return val;
}

const _$EventStatusEnumMap = {
  EventStatus.approved: 'approved',
  EventStatus.onSale: 'on sale',
  EventStatus.preRegister: 'pre-register',
  EventStatus.preSale: 'pre-sale',
  EventStatus.soldOut: 'sold out',
};
