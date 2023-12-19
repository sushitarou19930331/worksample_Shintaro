import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worksample/src/users/user.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
   Future<List<User>> fetchUsers() async {
    var client = http.Client();

    var uri = Uri.parse('https://dummyjson.com/docs/users');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return List.generate(10, (i) => User(i));
    }
    return [ ];
  }
 }
