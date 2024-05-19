import 'package:location/location.dart';

class Task {
  String name;
  DateTime dateTime;
  LocationData? location;

  Task({
    required this.name,
    required this.dateTime,
    this.location,
  });
}
