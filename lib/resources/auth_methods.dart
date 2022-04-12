import 'dart:ffi';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //signup the user
  Future<String> signUpUser({
    required String Username,
    required String Email,
    required String Password,
    //required Uint8List file,
  }) async {
    String res = "some error occurred";
    try {
      if (Username.isNotEmpty || Email.isNotEmpty || Password.isNotEmpty) {
        //register the user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: Email, password: Password);
        print(cred.user!.uid);
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'username': Username,
          'uid': cred.user!.uid,
          'email': Email,
        });
        res = "success";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-email') {
        res = 'The email address is badly formatted.';
      } else if (err.code == 'weak-password') {
        res = 'Password should be at least 6 characters';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> loginUser({
    required String Email,
    required String Password,
    //required Uint8List file,
  }) async {
    String res = "some error occurred";
    try {
      if (Email.isNotEmpty || Password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: Email, password: Password);
        res = 'success';
      } else {
        res = 'please enter all the fields';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
