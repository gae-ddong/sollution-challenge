import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? walkCal(double walklog) {
  double result = walklog / 10000;

  return result;
}

DateTime subDate() {
  final today = DateTime.now();
  final date = today.subtract(const Duration(days: 1));
  return date;
}

int totalcost(int footprint) {
  int result = 12500 - footprint;
  return result;
}
