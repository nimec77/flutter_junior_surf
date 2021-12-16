import 'package:dio/dio.dart';
import 'package:flutter_junior_surf/users/data/pods/user_pod.dart';

class HttpUsersProvider {
  Future<Iterable<UserPod>> fetchUsers(String url) async {
    final response = await Dio().get<List<dynamic>>(url);
    final list = response.data!.cast<Map<String, dynamic>>();

    return list.map((json) => UserPod.fromJson(json));
  }
}
