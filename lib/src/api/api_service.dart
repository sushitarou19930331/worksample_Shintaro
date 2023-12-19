import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worksample/src/users/user.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  // ToDo: Replace this with a call to the users API https://dummyjson.com/docs/users
  Future<List<User>> getUsers() async {
    await Future.delayed(const Duration(seconds: 1));
    return List.generate(10, (i) => User(i));
  }
}
///
