import 'package:firebase_database/firebase_database.dart';

class HostRider {
  final DatabaseReference hosts_ref = FirebaseDatabase.instance.ref("hosts");

  Future<String> startHostRider({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {
    await hosts_ref.child('$start_loc/departures/$user_id').set(true);
    await hosts_ref.child('$end_loc/arrivals/$user_id').set(true);
    return "success";
  }

  Future<String> endHostRider({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {
    await hosts_ref.child('$start_loc/departures/$user_id').remove();
    await hosts_ref.child('$end_loc/arrivals/$user_id').remove();
    return "success";
  }
}