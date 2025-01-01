import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _activityId = await secureStorage.getInt('ff_activityId') ?? _activityId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _activityId = 0;
  int get activityId => _activityId;
  set activityId(int value) {
    _activityId = value;
    secureStorage.setInt('ff_activityId', value);
  }

  void deleteActivityId() {
    secureStorage.delete(key: 'ff_activityId');
  }

  List<AccelerationDataStruct> _accelerationAS = [];
  List<AccelerationDataStruct> get accelerationAS => _accelerationAS;
  set accelerationAS(List<AccelerationDataStruct> value) {
    _accelerationAS = value;
  }

  void addToAccelerationAS(AccelerationDataStruct value) {
    accelerationAS.add(value);
  }

  void removeFromAccelerationAS(AccelerationDataStruct value) {
    accelerationAS.remove(value);
  }

  void removeAtIndexFromAccelerationAS(int index) {
    accelerationAS.removeAt(index);
  }

  void updateAccelerationASAtIndex(
    int index,
    AccelerationDataStruct Function(AccelerationDataStruct) updateFn,
  ) {
    accelerationAS[index] = updateFn(_accelerationAS[index]);
  }

  void insertAtIndexInAccelerationAS(int index, AccelerationDataStruct value) {
    accelerationAS.insert(index, value);
  }

  List<AsymmetryDataStruct> _asymmetryAS = [];
  List<AsymmetryDataStruct> get asymmetryAS => _asymmetryAS;
  set asymmetryAS(List<AsymmetryDataStruct> value) {
    _asymmetryAS = value;
  }

  void addToAsymmetryAS(AsymmetryDataStruct value) {
    asymmetryAS.add(value);
  }

  void removeFromAsymmetryAS(AsymmetryDataStruct value) {
    asymmetryAS.remove(value);
  }

  void removeAtIndexFromAsymmetryAS(int index) {
    asymmetryAS.removeAt(index);
  }

  void updateAsymmetryASAtIndex(
    int index,
    AsymmetryDataStruct Function(AsymmetryDataStruct) updateFn,
  ) {
    asymmetryAS[index] = updateFn(_asymmetryAS[index]);
  }

  void insertAtIndexInAsymmetryAS(int index, AsymmetryDataStruct value) {
    asymmetryAS.insert(index, value);
  }

  List<GroundContactTimeDataStruct> _groundContactTimeAS = [];
  List<GroundContactTimeDataStruct> get groundContactTimeAS =>
      _groundContactTimeAS;
  set groundContactTimeAS(List<GroundContactTimeDataStruct> value) {
    _groundContactTimeAS = value;
  }

  void addToGroundContactTimeAS(GroundContactTimeDataStruct value) {
    groundContactTimeAS.add(value);
  }

  void removeFromGroundContactTimeAS(GroundContactTimeDataStruct value) {
    groundContactTimeAS.remove(value);
  }

  void removeAtIndexFromGroundContactTimeAS(int index) {
    groundContactTimeAS.removeAt(index);
  }

  void updateGroundContactTimeASAtIndex(
    int index,
    GroundContactTimeDataStruct Function(GroundContactTimeDataStruct) updateFn,
  ) {
    groundContactTimeAS[index] = updateFn(_groundContactTimeAS[index]);
  }

  void insertAtIndexInGroundContactTimeAS(
      int index, GroundContactTimeDataStruct value) {
    groundContactTimeAS.insert(index, value);
  }

  List<StrideLengthDataStruct> _strideLengthAS = [];
  List<StrideLengthDataStruct> get strideLengthAS => _strideLengthAS;
  set strideLengthAS(List<StrideLengthDataStruct> value) {
    _strideLengthAS = value;
  }

  void addToStrideLengthAS(StrideLengthDataStruct value) {
    strideLengthAS.add(value);
  }

  void removeFromStrideLengthAS(StrideLengthDataStruct value) {
    strideLengthAS.remove(value);
  }

  void removeAtIndexFromStrideLengthAS(int index) {
    strideLengthAS.removeAt(index);
  }

  void updateStrideLengthASAtIndex(
    int index,
    StrideLengthDataStruct Function(StrideLengthDataStruct) updateFn,
  ) {
    strideLengthAS[index] = updateFn(_strideLengthAS[index]);
  }

  void insertAtIndexInStrideLengthAS(int index, StrideLengthDataStruct value) {
    strideLengthAS.insert(index, value);
  }

  List<VerticalRatioDataStruct> _verticalRatioAS = [];
  List<VerticalRatioDataStruct> get verticalRatioAS => _verticalRatioAS;
  set verticalRatioAS(List<VerticalRatioDataStruct> value) {
    _verticalRatioAS = value;
  }

  void addToVerticalRatioAS(VerticalRatioDataStruct value) {
    verticalRatioAS.add(value);
  }

  void removeFromVerticalRatioAS(VerticalRatioDataStruct value) {
    verticalRatioAS.remove(value);
  }

  void removeAtIndexFromVerticalRatioAS(int index) {
    verticalRatioAS.removeAt(index);
  }

  void updateVerticalRatioASAtIndex(
    int index,
    VerticalRatioDataStruct Function(VerticalRatioDataStruct) updateFn,
  ) {
    verticalRatioAS[index] = updateFn(_verticalRatioAS[index]);
  }

  void insertAtIndexInVerticalRatioAS(
      int index, VerticalRatioDataStruct value) {
    verticalRatioAS.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
