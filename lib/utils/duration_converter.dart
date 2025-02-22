import 'package:freezed_annotation/freezed_annotation.dart';

class DurationConverter implements JsonConverter<Duration, String> {
  const DurationConverter();

  @override
  Duration fromJson(String json) {
    List<String> parts = json.split(':');

    int hours = int.parse(parts[0]);
    int minutes = int.parse(parts[1]);
    List<String> secParts = parts[2].split('.');
    int seconds = int.parse(secParts[0]);
    int microseconds = secParts.length > 1 ? int.parse(secParts[1]) : 0;

    return Duration(
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      microseconds: microseconds,
    );
  }

  @override
  String toJson(Duration duration) {
    return duration.toString();
  }
}
