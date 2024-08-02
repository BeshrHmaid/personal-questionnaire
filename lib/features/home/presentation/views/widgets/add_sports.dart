import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/sport_model.dart';
final List<Sport> sports = [];
class AddSport extends StatefulWidget {
  const AddSport({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddSportState createState() => _AddSportState();
}

class _AddSportState extends State<AddSport> {
  final TextEditingController _sportController = TextEditingController();
  

  void _addSport() {
    final sportName = _sportController.text.trim();
    if (sportName.isNotEmpty) {
      setState(() {
        sports.add(Sport(name: sportName));
      });
      _sportController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _sportController,
          decoration: InputDecoration(
            labelText: 'Sport Name',
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: const Icon(Icons.add),
              onPressed: _addSport,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
            itemCount: sports.length,
            itemBuilder: (context, index) {
              final role = sports[index];
              return ListTile(
                title: Text(role.name),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      sports.removeAt(index);
                    });
                  },
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
