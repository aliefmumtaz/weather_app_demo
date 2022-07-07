class AppException implements Exception {
  final dynamic _message;
  final dynamic _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Masalah sambungan: ");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Permintaan tidak valid: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message]) : super(message, "Permintaan tidak sah: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, "Masukkan tidak valid: ");
}
