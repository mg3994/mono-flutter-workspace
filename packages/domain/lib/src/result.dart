import 'failure.dart';

/// Sealed result class representing either Success or Failure.
abstract class Result<T> {
  const Result();

  const factory Result.success(T data) = Success<T>;
  const factory Result.failure(Failure failure) = ResultFailure<T>;

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is ResultFailure<T>;

  T? get dataOrNull => isSuccess ? (this as Success<T>).data : null;
  Failure? get failureOrNull =>
      isFailure ? (this as ResultFailure<T>).failure : null;
}

class Success<T> extends Result<T> {
  final T data;
  const Success(this.data);
}

class ResultFailure<T> extends Result<T> {
  final Failure failure;
  const ResultFailure(this.failure);
}
