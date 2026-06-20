import 'package:json_annotation/json_annotation.dart';

part 'bank_dto.g.dart';

@JsonSerializable()
class BankDto {
  final String cardExpire;
  final String cardNumber;
  final String cardType;
  final String currency;
  final String iban;

  BankDto({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory BankDto.fromJson(Map<String, dynamic> json) =>
      _$BankDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BankDtoToJson(this);
}
