import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles.dart';
import 'package:flutter_application_1/features/home/data/models/user_model.dart';

class DisplayInformationViewBody extends StatelessWidget {
  const DisplayInformationViewBody({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'hello ${user.firstname}',
                  style: Styles.textStyle30,
                ),
              ],
            ),
            const SizedBox(height: 30,),
            const Text(
              'Details',
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 30,),
            Text(
              'first name: ${user.firstname}',
              style: Styles.textStyle18,
            ),
            const SizedBox(height: 30,),
            Text('last name: ${user.lastname}', style: Styles.textStyle18),
            const SizedBox(height: 30,),
            Text('age: ${user.age}', style: Styles.textStyle18),
            const SizedBox(height: 30,),
            Text('job: ${user.job}', style: Styles.textStyle18),
            const SizedBox(height: 30,),
            const Text('favorite sports', style: Styles.textStyle18),
            const SizedBox(height: 30,),
            SizedBox(
                height: 44,
                child: Wrap(
                  spacing: 8.0, // Space between items
                  runSpacing: 8.0, // Space between rows
                  children: user.sports.map((sport) {
                    return CustomSportContainer(sportName: sport.name);
                  }).toList(),
                ))
          ],
        ),
      ),
    );
  }
}

class CustomSportContainer extends StatelessWidget {
  const CustomSportContainer({super.key, required this.sportName});
  final String sportName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.green),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            sportName,
            style: Styles.textStyle18,
          ),
        ),
      ),
    );
  }
}
