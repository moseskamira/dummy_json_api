import 'package:dummy_json_api/features/profile/data/models/crypto_dto.dart';
import 'package:dummy_json_api/features/profile/domain/models/crypto.dart';

extension CryptoDtoMapper on CryptoDto {
  Crypto toDomain() => Crypto(coin: coin, wallet: wallet, network: network);
}
