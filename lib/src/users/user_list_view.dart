import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worksample/src/api/api_service.dart';
import 'user.dart';
import 'user_details_view.dart';

/// Displays a list of Users.
class UserListView extends ConsumerWidget {
  const UserListView({
    super.key,
    // ToDo: Replace this with a call to the users API https://dummyjson.com/docs/users
    this.items = const [User(1), User(2), User(3)],
  });

  static const routeName = '/';

  final List<User> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // This allows you to use the apiService
    var apiService = ref.read(apiServiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('List of users'),
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'userListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              // ToDo: Replace with user
              title: Text('User ${item.id}'),
              leading: const CircleAvatar(
                // ToDo: Display the users profile image
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                // Navigate to the details page. If the user leaves and returns to
                // the app after it has been killed while running in the
                // background, the navigation stack is restored.
                Navigator.restorablePushNamed(
                  context,
                  UserDetailsView.routeName,
                );
              });
        },
      ),
    );
  }
}
