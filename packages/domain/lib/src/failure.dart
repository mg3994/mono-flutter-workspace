import 'app_exception.dart';

/// Representation of domain failures.
abstract class Failure {
  final String message;
  final String? code;

  const Failure(this.message, [this.code]);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server Error', super.code]);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Cache Error', super.code]);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network Error', super.code]);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Unknown Error', super.code]);
}

class ExceptionFailure extends Failure {
  final AppException exception;
  ExceptionFailure(this.exception) : super(exception.message, exception.code);
}
