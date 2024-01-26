import 'package:intl/intl.dart';

class TFormatter {
  TFormatter._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatPhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      // Handle null or empty phone numbers
      return 'N/A';
    }

    if (phoneNumber.length == 10) {
      return '(+91) ${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';
    } else {
      // Return the original phone number or another default value
      return phoneNumber;
    }
  }
}
