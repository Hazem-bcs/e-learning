import '../../../../enums/handle_error/student/insert_error_type.dart';

InsertStudentError parseInsertStudentStatus(String result) {
  switch (result) {
    case 'Insertion successful':
      return InsertStudentError.insertionSuccessful;
    case 'Email already exists':
      return InsertStudentError.emailAlreadyExists;
    case 'Phone number already exists':
      return InsertStudentError.phoneAlreadyExists;
    case 'Email already exists but NOT VERIFIED YET':
      return InsertStudentError.emailNotVerifiedYet;
    case 'Phone number already exists but NOT VERIFIED YET':
      return InsertStudentError.phoneNotVerifiedYet;
    case 'Either email or phone must be provided':
      return InsertStudentError.missingEmailOrPhone;
    default:
      return InsertStudentError.insertionError;
  }
}
