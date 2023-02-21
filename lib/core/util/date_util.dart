abstract class DateUtil {
  static String howOldIam(){
    DateTime now = DateTime.now();
    Duration difference = now.difference(DateTime.utc(1997,DateTime.june));
    double born = difference.inDays / 365;
    return born.truncate().toString();
  }
}