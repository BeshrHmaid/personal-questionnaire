// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_application_1/features/home/data/models/sport_model.dart';

class User {
  final String firstname;
  final String lastname;
  final int age;
  final String job;
  final List<Sport> sports;
  User({
    required this.firstname,
    required this.lastname,
    required this.age,
    required this.job,
    required this.sports,
  });
}
