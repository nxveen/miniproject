import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';

class HitchHiker {
  final DatabaseReference hiker_ref = FirebaseDatabase.instance.ref("hikers");
  final DatabaseReference host_ref = FirebaseDatabase.instance.ref("hosts");

  Future<String> requestRide({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {
    await hiker_ref.child('$start_loc/departures/$user_id').set(true);
    await hiker_ref.child('$end_loc/arrivals/$user_id').set(true);
    return "success";
  }

  Future<List> searchHost({
    required String start_loc,
    required String end_loc
  }) async {
    final possible_start_locs = [];
    final possible_end_locs = [];
    final available_start_locs = [];

    // determining possible end and start locations
    for (var i = 0; i < available_start_locs.length; i++) {
      if (available_start_locs[i] <= int.parse(start_loc)) {
        possible_start_locs.add(available_start_locs[i]);
      } else if (available_start_locs[i] >= int.parse(end_loc)) {
        possible_end_locs.add(available_start_locs[i]);
      }
    }

    final available_hosts = [];
    for (var i = 0; i < possible_start_locs.length; i++) {
      // if (userId found in '$start_loc_item/departures')
      for (var j = 0; j < possible_end_locs.length; i++) {
        // if (same userId found in '$end_loc_item/arrivals')
        available_hosts.add(j);
      }
    }
    return available_hosts;
  }

  Future<String> removeRideRequest({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {
    await hiker_ref.child('$start_loc/departures/$user_id').remove();
    await hiker_ref.child('$end_loc/arrivals/$user_id').remove();
    return "success";
  }
}