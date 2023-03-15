String durationToString(Duration? d) {
  if (d == null) return '';
  final h = d.inHours > 9 ? '${d.inHours}' : '0${d.inHours}';
  final mV = d.inMinutes.remainder(60);
  final m = mV > 9 ? '$mV' : '0$mV';
  return '$h:$m';
}
