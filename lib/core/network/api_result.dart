import 'package:doctor_app/core/network/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

 part 'api_result.freezed.dart';
@Freezed()
abstract class ApiResult<T> with _$ApiResult<T>{
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.error(ErrorHandler errorhandlar) = Failure<T>;
}