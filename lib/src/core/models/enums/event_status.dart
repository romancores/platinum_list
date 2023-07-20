import 'package:json_annotation/json_annotation.dart';

/// Список scopes
enum EventStatus {
  ///
  @JsonValue('approved')
  approved,

  ///
  @JsonValue('on sale')
  onSale,

  ///
  @JsonValue('pre-register')
  preRegister,

  ///
  @JsonValue('pre-sale')
  preSale,

  ///
  @JsonValue('sold out')
  soldOut,
}
