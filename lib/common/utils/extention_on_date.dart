extension DateTimeExtension on DateTime {
  bool isToday() => DateTime.now().year == year && DateTime.now().month == month && DateTime.now().day == day;

  bool isThisWeek() =>
      DateTime.now().year == year &&
      DateTime.now().month == month &&
      DateTime.now().subtract(const Duration(days: 6)).isBefore(this);

  bool isAtSameDayAs(DateTime a) => a.year == year && a.month == month && a.day == day;
  bool isAtSameMinuteAs(DateTime a) =>
      a.year == year && a.month == month && a.day == day && a.hour == hour && a.minute == minute;
}
