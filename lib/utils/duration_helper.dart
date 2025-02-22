import 'package:memory_box_avada/models/audio_records_model.dart';

String formatDuration(Duration input) {
  int hours = input.inHours;
  int minutes = input.inMinutes.remainder(60);
  int seconds = input.inSeconds.remainder(60);

  String result = '';

  if (hours > 0) {
    String hourText = getHourText(hours);
    result += '$hours $hourText ';
  }

  if (minutes > 0) {
    String minuteText = getMinuteText(minutes);
    result += '$minutes $minuteText ';
  }

  String secondText = getSecondText(seconds);
  result += '$seconds $secondText';

  return result.trim();
}

String getHourText(int hours) {
  if (hours == 1) {
    return 'година';
  } else if (hours >= 2 && hours <= 4) {
    return 'години';
  } else {
    return 'годин';
  }
}

String getSecondText(int seconds) {
  if (seconds == 1) {
    return 'секунда';
  } else if (seconds >= 2 && seconds <= 4) {
    return 'секунди';
  } else {
    return 'секунд';
  }
}

String getMinuteText(int minutes) {
  if (minutes == 1) {
    return 'хвилина';
  } else if (minutes >= 2 && minutes <= 4) {
    return 'хвилини';
  } else {
    return 'хвилин';
  }
}

Duration getTotalDuration(List<AudioRecordsModel> audiosList) {
  Duration totalDuration = Duration.zero;

  for (var audio in audiosList) {
    totalDuration += audio.duration;
  }

  return totalDuration;
}

String _twoDigit(int number) {
  return number < 10 ? '0$number' : '$number';
}

String formatCollectionDate(String dateString) {
  DateTime dateTime = DateTime.parse(dateString);
  String formattedDate =
      "${dateTime.day.toString().padLeft(2, '0')}.${dateTime.month.toString().padLeft(2, '0')}.${dateTime.year % 100}";
  return formattedDate;
}
