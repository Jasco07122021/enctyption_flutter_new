import 'package:encrypt/encrypt.dart';

class Symmetric {
  static const String keyStr = "qwertyuiopasdfgh";

  static String encrypt(data) {
    final key = Key.fromUtf8(keyStr);
    final iv = IV.fromLength(16);
    final encryptor = Encrypter(AES(key));
    return encryptor.encrypt(data, iv: iv).base64;
  }

  static String desCrypt(data) {
    final key = Key.fromUtf8(keyStr);
    final iv = IV.fromLength(16);
    final encryptor = Encrypter(AES(key));
    return encryptor.decrypt64(data, iv: iv);
  }
}
