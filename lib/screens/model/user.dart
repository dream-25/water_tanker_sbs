class User {
  final String firstName;
  final String lastName;
  final String age;
  final String filling;
  final String location;
  final String Pouring;
  final String Status;

  const User(
      {required this.firstName,
      required this.lastName,
      required this.age,
      required this.filling,
      required this.location,
      required this.Pouring,
      required this.Status});

  /*User copy({
    String? firstName,
    String? lastName,
    int? age,
  }) =>
      User(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        age: age ?? this.age,
      );*/

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          age == other.age &&
          filling == other.filling &&
          location == other.location &&
          Pouring == other.Pouring &&
          Status == other.Status;

  @override
  int get hashCode =>
      firstName.hashCode ^
      lastName.hashCode ^
      age.hashCode ^
      filling.hashCode ^
      location.hashCode ^
      Pouring.hashCode ^
      Status.hashCode;
}
