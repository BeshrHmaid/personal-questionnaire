import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_router.dart';
import 'package:flutter_application_1/features/home/data/models/user_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/add_sports.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  controller: _firstNameController,
                  labelText: 'first name',
                  errorMessage: 'please enter your first name',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  labelText: 'last name',
                  errorMessage: 'please enter your last name',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: _ageController,
                  labelText: 'age',
                  errorMessage: 'please enter your age',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: _jobController,
                  labelText: 'job',
                  errorMessage: 'please enter your job',
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
                child: AddSport(),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    User user = User(firstname: _firstNameController.text, lastname: _lastNameController.text, age:int.parse( _ageController.text), job: _jobController.text, sports:sports );
                    GoRouter.of(context).push(AppRouter.kDetailsView , extra: user);
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.errorMessage,
  });

  final TextEditingController controller;
  final String labelText;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
    );
  }
}
