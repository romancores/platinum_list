// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      src: json['src'] as String,
      width: json['width'] as num?,
      height: json['height'] as num?,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) {
  final val = <String, dynamic>{
    'src': instance.src,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}
