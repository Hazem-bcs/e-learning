import '../../../../enums/handle_error/verify_code/verify_code.dart';

VerificationStatus parseVerificationStatus(String status) {
  switch (status) {
    case 'Verification successful':
      return VerificationStatus.verificationSuccessful;
    case 'Verification code expired':
      return VerificationStatus.verificationCodeExpired;
    case 'Invalid verification code':
      return VerificationStatus.invalidVerificationCode;
    case 'Student not found':
      return VerificationStatus.studentNotFound;
    default:
      throw ArgumentError('Invalid verification status: $status');
  }
}
