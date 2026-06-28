extension DateTimeAgeExtension on DateTime {
  /// Calcula a idade a partir da dateTime.now recebido.
  int get howOldIam {
    Duration difference = this.difference(DateTime.utc(1997,DateTime.june));
    double born = difference.inDays / 365;
    return born.toInt();
  }
}
