// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoDto _$CryptoDtoFromJson(Map<String, dynamic> json) => CryptoDto(
  coin: json['coin'] as String,
  wallet: json['wallet'] as String,
  network: json['network'] as String,
);

Map<String, dynamic> _$CryptoDtoToJson(CryptoDto instance) => <String, dynamic>{
  'coin': instance.coin,
  'wallet': instance.wallet,
  'network': instance.network,
};
