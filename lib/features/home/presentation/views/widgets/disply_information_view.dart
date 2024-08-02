import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/user_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/display_information_view_body.dart';

class DisplayInformationView extends StatelessWidget {
  const DisplayInformationView({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DisplayInformationViewBody(user: user),
    );
  }
}
