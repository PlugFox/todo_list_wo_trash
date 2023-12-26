/// Converts an integer value representing milliseconds since epoch to a DateTime object.
///
/// The [int] parameter represents the number of milliseconds since January 1, 1970, 00:00:00 UTC.
/// Returns a [DateTime] object representing the specified point in time.
DateTime dateTimeFromJson(int int) => DateTime.fromMillisecondsSinceEpoch(int);

/// Converts a DateTime object to an integer value representing milliseconds since epoch.
///
/// The [time] parameter represents a point in time.
/// Returns an [int] value representing the number of milliseconds since January 1, 1970, 00:00:00 UTC.
int dateTimeToJson(DateTime time) => time.millisecondsSinceEpoch;
