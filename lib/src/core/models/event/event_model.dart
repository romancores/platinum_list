import 'package:json_annotation/json_annotation.dart';
import '../models.dart';

part 'event_model.g.dart';

@JsonSerializable(includeIfNull: false)
class EventModel {
  EventModel({
    this.url,
    this.start,
    this.name,
    this.id,
    this.end,
    this.status,
    this.description,
    this.vat,
    this.rating,
    this.imageSmall,
    this.imageBig,
    this.imageFull
  });

  /// Преобразование json в модель
  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  /// Название события
  @JsonKey(name: JsonKeys.name)
  final String? name;

  /// Id события
  @JsonKey(name: JsonKeys.id)
  final int? id;

  @JsonKey(name: JsonKeys.description)
  final String? description;

  @JsonKey(name: JsonKeys.url)
  final String? url;

  @JsonKey(name: JsonKeys.rating)
  final num? rating;

  @JsonKey(name: JsonKeys.start, fromJson: fromJsonDate)
  final DateTime? start;

  @JsonKey(name: JsonKeys.end, fromJson: fromJsonDate)
  final DateTime? end;

  @JsonKey(name: JsonKeys.vat)
  final num? vat;

  @JsonKey(name: JsonKeys.status)
  final EventStatus? status;

  @JsonKey(name: JsonKeys.imageFull)
  final ImageModel? imageFull;

  @JsonKey(name: JsonKeys.imageSmall)
  final ImageModel? imageSmall;

  @JsonKey(name: JsonKeys.imageBig)
  final ImageModel? imageBig;

//TODO add price object
//TODO add venues object
}

DateTime? fromJsonDate(num? date) {
  if (date == null) return null;

  return DateTime.fromMillisecondsSinceEpoch(date.toInt());
}
