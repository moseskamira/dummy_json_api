import 'package:json_annotation/json_annotation.dart';

part 'crypto_dto.g.dart';

@JsonSerializable()
class CryptoDto {
  final String coin;
  final String wallet;
  final String network;

  CryptoDto({required this.coin, required this.wallet, required this.network});

  factory CryptoDto.fromJson(Map<String, dynamic> json) =>
      _$CryptoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoDtoToJson(this);
}
