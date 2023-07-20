// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventRequest _$EventRequestFromJson(Map<String, dynamic> json) => EventRequest(
      search: json['search'] as String?,
      id: json['id'] as String?,
      scopes: (json['scope'] as List<dynamic>)
          .map((e) => $enumDecode(_$EventScopeEnumMap, e))
          .toList(),
      hasTickets: json['has_tickets'] as bool?,
      cityId: json['city.id'] as String?,
      nearbyCityId: json['nearby_city.id'] as String?,
    );

Map<String, dynamic> _$EventRequestToJson(EventRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  writeNotNull('id', instance.id);
  val['scope'] = instance.scopes.map((e) => _$EventScopeEnumMap[e]!).toList();
  writeNotNull('has_tickets', instance.hasTickets);
  writeNotNull('city.id', instance.cityId);
  writeNotNull('nearby_city.id', instance.nearbyCityId);
  return val;
}

const _$EventScopeEnumMap = {
  EventScope.useEventTickets: 'use.event-tickets',
  EventScope.affiliateShowEvents: 'affiliate.show.events',
  EventScope.showEvents: 'show.events',
  EventScope.partnerSaleReceivePayments: 'partner-sale.receive-payments',
  EventScope.partnerSaleEventSeasonTickets: 'partner-sale.event-season-tickets',
  EventScope.partnerSaleEventVouchers: 'partner-sale.event-vouchers',
  EventScope.partnerSaleEventTickets: 'partner-sale.event-tickets',
};
