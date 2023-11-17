/// this is more like a syntactic sugar to make writing durations easier
extension DurationExtension on int {
  Duration get ms {
    return Duration(milliseconds: this);
  }

  Duration get seconds {
    return Duration(seconds: this);
  }
}
