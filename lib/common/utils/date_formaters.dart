import 'package:intl/intl.dart';

class DateFormaters {
  static String routeDate(DateTime dt) => DateFormat('yyyy.MM.dd').format(dt);
  static String routeTime(DateTime dt) => DateFormat('KK:mm a').format(dt);

  static String ddMMyyyy(DateTime? dt) => dt == null ? '' : DateFormat('dd.MM.yyyy').format(dt);
  static String hHmm(DateTime? dt) => dt == null ? '' : DateFormat('HH:mm').format(dt);

  static String chatDate(DateTime? dt) => dt == null ? '' : DateFormat('EEEE, MMM d').format(dt);
  static String chatTime(DateTime? dt) => dt == null ? '' : DateFormat('KK:mm a').format(dt);

  static String offerValidUntilDate(DateTime dt) => DateFormat('dd MMMM yyyy').format(dt);

  static String notificationDate(DateTime dt) {
    final now = DateTime.now();
    final difference = now.difference(dt);
    if (difference.inDays >= 1) {
      return DateFormat('dd.mm.yyyy').format(dt);
    } else {
      if (difference.inHours > 0) {
        return '${difference.inHours} h';
      } else if (difference.inMinutes > 0) {
        return '${difference.inMinutes} m';
      } else {
        return '${difference.inSeconds} s';
      }
    }
  }
}
