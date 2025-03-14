import 'package:collection/collection.dart';

enum ActivityTypes {
  tripleJump,
  running,
  longJump,
}

enum Feedback {
  great,
  good,
  improve,
}

enum Genders {
  male,
  female,
  other,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ActivityTypes):
      return ActivityTypes.values.deserialize(value) as T?;
    case (Feedback):
      return Feedback.values.deserialize(value) as T?;
    case (Genders):
      return Genders.values.deserialize(value) as T?;
    default:
      return null;
  }
}
