import 'package:firebase_database/firebase_database.dart';

class HitchHiker {
  final DatabaseReference rtdb_ref = FirebaseDatabase.instance.ref("hitchhikers");

  Future<String> requestRide({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {
    await rtdb_ref.child('$start_loc/departures/$user_id').set(true);
    await rtdb_ref.child('$end_loc/arrivals/$user_id').set(true);
    return "success";
  }

  Future<String> removeRideRequest({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {
    await rtdb_ref.child('$start_loc/departures/$user_id').remove();
    await rtdb_ref.child('$end_loc/arrivals/$user_id').remove();
    return "success";
  }
}