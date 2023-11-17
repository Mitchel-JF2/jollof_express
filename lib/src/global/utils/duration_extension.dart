extension DurationExtension on int {
  Duration get ms {
    return Duration(milliseconds: this);
  }

  Duration get seconds {
    return Duration(seconds: this);
  }
}
