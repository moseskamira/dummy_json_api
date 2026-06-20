import 'package:dummy_json_api/features/profile/data/mappers/coordinates_dto_mapper.dart';
import 'package:dummy_json_api/features/profile/data/models/address_dto.dart';
import 'package:dummy_json_api/features/profile/domain/models/address.dart';

extension AddressDtoMapper on AddressDto {
  Address toDomain() => Address(
    address: address,
    city: city,
    state: state,
    stateCode: stateCode,
    postalCode: postalCode,
    coordinates: coordinates.toDomain(),
    country: country,
  );
}
