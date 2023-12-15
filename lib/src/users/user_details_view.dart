import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class UserDetailsView extends StatelessWidget {
  const UserDetailsView({super.key});

  static const routeName = '/user_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: const Center(
        child: Text('ToDo: Display the information here'),
      ),
    );
  }
}
