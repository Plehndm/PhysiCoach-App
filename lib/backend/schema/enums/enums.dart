import 'package:collection/collection.dart';

enum ActivityTypes {
  Triple_Jump,
  Running,
  Long_Jump,
}

enum Feedback {
  Great,
  Good,
  Improve,
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
    default:
      return null;
  }
}
