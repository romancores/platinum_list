import 'package:json_annotation/json_annotation.dart';

/// Список scopes
enum EventScope {
  ///
  @JsonValue('use.event-tickets')
  useEventTickets,

  ///
  @JsonValue('affiliate.show.events')
  affiliateShowEvents,

  ///
  @JsonValue('show.events')
  showEvents,

  ///
  @JsonValue('partner-sale.receive-payments')
  partnerSaleReceivePayments,

  ///
  @JsonValue('partner-sale.event-season-tickets')
  partnerSaleEventSeasonTickets,

  ///
  @JsonValue('partner-sale.event-vouchers')
  partnerSaleEventVouchers,

  ///
  @JsonValue('partner-sale.event-tickets')
  partnerSaleEventTickets,
}
