import 'package:json_annotation/json_annotation.dart';
import '../models.dart';

part 'image_model.g.dart';

@JsonSerializable(includeIfNull: false)
class ImageModel {
  ImageModel({
    required this.src,
    this.width,
    this.height,
  });

  /// Преобразование json в модель
  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  /// src = url картинки
  @JsonKey(name: JsonKeys.src)
  final String src;

  /// ширина картинки
  @JsonKey(name: JsonKeys.width)
  final num? width;

  /// высота картинки
  @JsonKey(name: JsonKeys.height)
  final num? height;

}
