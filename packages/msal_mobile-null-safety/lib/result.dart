// ignore_for_file: unnecessary_parenthesis, annotate_overrides

import 'exception.dart';
import 'payload.dart';

class MsalMobileResult {
  final bool isSuccess;
  final MsalMobileException? exception;
  final MsalMobileException? innerException;

  MsalMobileResult({
    required this.isSuccess,
    this.exception,
    this.innerException,
  });

  MsalMobileResult.fromJson(Map<String, dynamic> json)
      : isSuccess = json['isSuccess'] as bool,
        exception = json['exception'] != null
            ? MsalMobileException.fromJson(
                (json['exception'] as Map<String, dynamic>),
              )
            : null,
        innerException = json['innerException'] != null
            ? MsalMobileException.fromJson(
                (json['innerException'] as Map<String, dynamic>),
              )
            : null;
}

class MsalMobileGetAccountResult implements MsalMobileResult {
  final bool isSuccess;
  final MsalMobileGetAccountResultPayload? payload;
  final MsalMobileException? exception;
  final MsalMobileException? innerException;

  MsalMobileGetAccountResult.fromJson(Map<String, dynamic> json)
      : isSuccess = json['isSuccess'] as bool,
        payload = json['payload'] != null
            ? MsalMobileGetAccountResultPayload.fromJson(
                (json['payload'] as Map<String, dynamic>),
              )
            : null,
        exception = json['exception'] != null
            ? MsalMobileException.fromJson(
                (json['exception'] as Map<String, dynamic>),
              )
            : null,
        innerException = json['innerException'] != null
            ? MsalMobileException.fromJson(
                (json['innerException'] as Map<String, dynamic>),
              )
            : null;
}

class MsalMobileAuthenticationResult implements MsalMobileResult {
  final bool isSuccess;
  final MsalMobileAuthenticationResultPayload? payload;
  final MsalMobileException? exception;
  final MsalMobileException? innerException;
  final bool? isUiRequired;

  MsalMobileAuthenticationResult.fromJson(Map<String, dynamic> json)
      : isSuccess = json['isSuccess'] as bool,
        isUiRequired = json['isUiRequired'] as bool,
        payload = json['payload'] != null
            ? MsalMobileAuthenticationResultPayload.fromJson(
                (json['payload'] as Map<String, dynamic>),
              )
            : null,
        exception = json['exception'] != null
            ? MsalMobileException.fromJson(
                (json['exception'] as Map<String, dynamic>),
              )
            : null,
        innerException = json['innerException'] != null
            ? MsalMobileException.fromJson(
                (json['innerException'] as Map<String, dynamic>),
              )
            : null;
}
