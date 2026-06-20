import 'package:dummy_json_api/features/profile/data/models/bank_dto.dart';
import 'package:dummy_json_api/features/profile/domain/models/bank.dart';

extension BankDtoMapper on BankDto {
  Bank toDomain() => Bank(
    cardExpire: cardExpire,
    cardNumber: cardNumber,
    cardType: cardType,
    currency: currency,
    iban: iban,
  );
}
