import 'package:pett_peaces/fetures/order/domain/entity/booking_eneity.dart';

import 'service.dart';

class Datum extends BookingEneity {
  int? id;
  String? reserveNumber;
  String? startDate;
  String? endDate;
  String? animal;
  int? animalId;
  bool? isApproved;
  List<Service>? services;

  Datum({
    this.id,
    this.reserveNumber,
    this.startDate,
    this.endDate,
    this.animal,
    this.animalId,
    this.isApproved,
    this.services,
  }) : super(
          name: animal ?? "",
          enddate: endDate ?? "",
          statrdate: startDate ?? "",
          service: services ?? [],
          idd: id ?? 0,
          number: reserveNumber ?? "",
          numberoforder: reserveNumber ?? "",
          price: animal ?? "",
        );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        reserveNumber: json['reserve_number'] as String?,
        startDate: json['start_date'] as String?,
        endDate: json['end_date'] as String?,
        animal: json['animal'] as String?,
        animalId: json['animal_id'] as int?,
        isApproved: json['is_approved'] as bool?,
        services: (json['services'] as List<dynamic>?)
            ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'reserve_number': reserveNumber,
        'start_date': startDate,
        'end_date': endDate,
        'animal': animal,
        'animal_id': animalId,
        'is_approved': isApproved,
        'services': services?.map((e) => e.toJson()).toList(),
      };
}
