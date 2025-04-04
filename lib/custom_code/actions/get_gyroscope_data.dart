// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sensors_plus/sensors_plus.dart';

Future<GyroscopeDataStruct?> getGyroscopeData(
    GyroscopeDataStruct? gyroscopeData) async {
  final _streamSubscriptions = <StreamSubscription<dynamic>>[];
  Duration sensorInterval = SensorInterval.fastestInterval;

  // Listen to the stream for gyroscope events
  _streamSubscriptions
      .add(gyroscopeEventStream(samplingPeriod: sensorInterval).listen(
    (GyroscopeEvent event) {
      // Store data from gyroscope stream
      gyroscopeData?.xGyro = event.x;
      gyroscopeData?.yGyro = event.y;
      gyroscopeData?.zGyro = event.z;
      gyroscopeData?.timestamp = event.timestamp;
    },
    onError: (error) {
      // Logic to handle error
      // Needed for Android in case sensor is not available

      return null;
    },
    cancelOnError: true,
  ));
  _streamSubscriptions[0].cancel();
  return gyroscopeData;
}
