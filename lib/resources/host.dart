import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HostRider {
  final _hosts = FirebaseFirestore.instance.collection("hosts");
  final _hikers = FirebaseFirestore.instance.collection("hikers");

  Future<String> startHostRider({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {
    var prevDeps = await _hosts.doc(start_loc).get();
    Map? data = {};
    if (prevDeps.exists) {
      data = prevDeps.data();
      if (data !=null) {
        if (data["departures"] != null) {
          await _hosts.doc(start_loc).update({"departures": [...data["departures"], user_id]});
        } else {
          await _hosts.doc(start_loc).update({"departures": [user_id]});
        }
      }
    } else {
      await _hosts.doc(start_loc).set({"departures": [user_id], "arrivals": []});
    }


    var prevArrv = await _hosts.doc(end_loc).get();
    Map? arrData = {};
    if (prevDeps.exists) {
      arrData = prevArrv.data();
      if (arrData !=null) {
        if (arrData["arrivals"] != null) {
          await _hosts.doc(end_loc).update({"arrivals": [...arrData["arrivals"], user_id]});
        } else {
          await _hosts.doc(end_loc).update({"arrivals": [user_id]});
        }
      }
    } else {
      await _hosts.doc(end_loc).set({"arrivals": [user_id], "departures": []});
    }
    return "success";
  }

  Future<String> searchHiker({
    required String start_loc_str,
    required String end_loc_str,
    required String user_id
  }) async {

    var start_loc = int.parse(start_loc_str);
    var end_loc = int.parse(end_loc_str);

  var possible_start_locs = [];
  var possible_end_locs = [];
  var available_start_locs = [1, 2, 3, 4];
  var temp = [];

  // determining possible end and start locations
  for (var i = 0; i < available_start_locs.length; i++) {
    if (available_start_locs[i] >= start_loc) {
      possible_start_locs.add(available_start_locs[i]);
    }
    if (available_start_locs[i] <= end_loc) {
      possible_end_locs.add(available_start_locs[i]);
    }
  }

  if (start_loc > end_loc) {
    temp = possible_end_locs;
    possible_end_locs = possible_start_locs;
    possible_start_locs = temp;
  }

  Map<String, List> depData = {}, arrData = {};
  for (var i = 0; i < possible_start_locs.length; i++) {
    var depsRef = await _hikers.doc(possible_start_locs[i].toString()).get();
    if (depsRef.exists) {
      depData[possible_start_locs[i].toString()] = depsRef.data()?["departures"];
    } else {
      depData[possible_start_locs[i].toString()] = [];
    }
  }
  for (var i = 0; i < possible_end_locs.length; i++) {
    var arrRef = await _hikers.doc(possible_end_locs[i].toString()).get();
    if (arrRef.exists) {
      arrData[possible_end_locs[i].toString()] = arrRef.data()?["arrivals"];
    } else {
      arrData[possible_end_locs[i].toString()] = [];
    }
  }

    for (var i = 0; i < possible_start_locs.length; i++) {
      print("Before first null check $depData ${possible_start_locs[i]} ${depData[possible_start_locs[i].toString()]}");
      if(depData[possible_start_locs[i].toString()]!=null){
        print("Before second loop");
        for (var j = 0; j < depData[possible_start_locs[i].toString()]!.length; j++) {
          for (var k = 0; k < possible_end_locs.length; k++) {
            print("Before second null check");
            if (arrData[possible_end_locs[k].toString()] != null) {
              for (var l = 0; l < arrData[possible_end_locs[k].toString()]!.length; l++) {
                print('depData comp: ${depData[possible_start_locs[i].toString()]![j]}  ${arrData[possible_end_locs[k].toString()]![l]}');
                if (depData[possible_start_locs[i].toString()]![j] == arrData[possible_end_locs[k].toString()]![l]) {
                  return possible_start_locs[i].toString();
                }
              }
            }
          }
        }
      }
    }


  return '0';
}

  Future<String> endHostRider({
    required String start_loc,
    required String end_loc,
    required String user_id
  }) async {

    var prevDeps = await _hosts.doc(start_loc).get();
    prevDeps.data();
    Map? data = {};
    if (prevDeps.exists) {
      data = prevDeps.data();
    }
    if (data !=null) {
      if (data["departures"] != null) {
        data["departures"]?.remove(user_id);
        await _hosts.doc(start_loc).update({"departures": data["departures"]});
      } else {
        await _hosts.doc(start_loc).update({"departures": []});
      }
    }


    var prevArrv = await _hosts.doc(end_loc).get();
    Map? arrData = {};
    if (prevDeps.exists) {
      arrData = prevArrv.data();
    }
    if (arrData !=null) {
      if (arrData["arrivals"] != null) {
        arrData["arrivals"]?.remove(user_id);
        await _hosts.doc(end_loc).update({"arrivals": arrData["arrivals"]});
      } else {
        await _hosts.doc(end_loc).update({"arrivals": []});
      }
    }
    return "success";
  }
}