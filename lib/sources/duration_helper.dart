import 'package:memory_box_avada/models/audio_records_model.dart';

String formatDuration(String input) {
  List<String> parts = input.split(':');

  int hours = int.parse(parts[0]);
  int minutes = int.parse(parts[1]);
  int seconds = int.parse(parts[2].split('.')[0]);

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

String getTotalDuration(List<AudioRecordsModel> audiosList) {
  double totalSeconds = 0;

  for (var audio in audiosList) {
    String duration = audio.duration;
    List<String> parts = duration.split(':');
    if (parts.length == 3) {
      // Години, хвилини, секунди
      int hours = int.parse(parts[0]);
      int minutes = int.parse(parts[1]);
      double seconds = double.parse(parts[2]);

      totalSeconds += hours * 3600 + minutes * 60 + seconds;
    }
  }

  int hours = totalSeconds ~/ 3600;
  int minutes = (totalSeconds % 3600) ~/ 60;
  double seconds = totalSeconds % 60;

  String formattedDuration = _formatDuration(hours, minutes, seconds);
  return formattedDuration;
}

String _formatDuration(int hours, int minutes, double seconds) {
  int secondsInt = seconds.toInt();
  int milliseconds = ((seconds - secondsInt) * 1000000).toInt();

  return '$hours:${_twoDigit(minutes)}:${_twoDigit(secondsInt)}.$milliseconds';
}

String _twoDigit(int number) {
  return number < 10 ? '0$number' : '$number';
}
