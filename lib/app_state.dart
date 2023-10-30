import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _questionControl = prefs.getInt('ff_questionControl') ?? _questionControl;
    });
    _safeInit(() {
      _numberOfQuestions =
          prefs.getInt('ff_numberOfQuestions') ?? _numberOfQuestions;
    });
    _safeInit(() {
      _wrongNumber = prefs.getInt('ff_wrongNumber') ?? _wrongNumber;
    });
    _safeInit(() {
      _correctNumber = prefs.getInt('ff_correctNumber') ?? _correctNumber;
    });
    _safeInit(() {
      _answerControl = prefs.getString('ff_answerControl') ?? _answerControl;
    });
    _safeInit(() {
      _note = prefs.getString('ff_note') ?? _note;
    });
    _safeInit(() {
      _questionCount = prefs.getInt('ff_questionCount') ?? _questionCount;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _questionControl = 0;
  int get questionControl => _questionControl;
  set questionControl(int _value) {
    _questionControl = _value;
    prefs.setInt('ff_questionControl', _value);
  }

  int _numberOfQuestions = 0;
  int get numberOfQuestions => _numberOfQuestions;
  set numberOfQuestions(int _value) {
    _numberOfQuestions = _value;
    prefs.setInt('ff_numberOfQuestions', _value);
  }

  int _wrongNumber = 0;
  int get wrongNumber => _wrongNumber;
  set wrongNumber(int _value) {
    _wrongNumber = _value;
    prefs.setInt('ff_wrongNumber', _value);
  }

  int _correctNumber = 0;
  int get correctNumber => _correctNumber;
  set correctNumber(int _value) {
    _correctNumber = _value;
    prefs.setInt('ff_correctNumber', _value);
  }

  String _answerControl = '';
  String get answerControl => _answerControl;
  set answerControl(String _value) {
    _answerControl = _value;
    prefs.setString('ff_answerControl', _value);
  }

  String _note = '';
  String get note => _note;
  set note(String _value) {
    _note = _value;
    prefs.setString('ff_note', _value);
  }

  int _questionCount = 0;
  int get questionCount => _questionCount;
  set questionCount(int _value) {
    _questionCount = _value;
    prefs.setInt('ff_questionCount', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
