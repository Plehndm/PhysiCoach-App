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

enum Genders {
  Male,
  Female,
  Other,
}

enum Heights {
  Test,
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
    case (Heights):
      return Heights.values.deserialize(value) as T?;
    default:
      return null;
  }
}
