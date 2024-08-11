import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _startdate = prefs.containsKey('ff_startdate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_startdate')!)
          : _startdate;
    });
    _safeInit(() {
      _enddate = prefs.containsKey('ff_enddate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_enddate')!)
          : _enddate;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _home = false;
  bool get home => _home;
  set home(bool value) {
    _home = value;
  }

  bool _mytrip = false;
  bool get mytrip => _mytrip;
  set mytrip(bool value) {
    _mytrip = value;
  }

  bool _wishlist = false;
  bool get wishlist => _wishlist;
  set wishlist(bool value) {
    _wishlist = value;
  }

  bool _profile = false;
  bool get profile => _profile;
  set profile(bool value) {
    _profile = value;
  }

  bool _creaditcard = false;
  bool get creaditcard => _creaditcard;
  set creaditcard(bool value) {
    _creaditcard = value;
  }

  bool _paypal = false;
  bool get paypal => _paypal;
  set paypal(bool value) {
    _paypal = value;
  }

  bool _stripe = false;
  bool get stripe => _stripe;
  set stripe(bool value) {
    _stripe = value;
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool value) {
    _searchactive = value;
  }

  List<String> _destinationsearches = [];
  List<String> get destinationsearches => _destinationsearches;
  set destinationsearches(List<String> value) {
    _destinationsearches = value;
  }

  void addToDestinationsearches(String value) {
    destinationsearches.add(value);
  }

  void removeFromDestinationsearches(String value) {
    destinationsearches.remove(value);
  }

  void removeAtIndexFromDestinationsearches(int index) {
    destinationsearches.removeAt(index);
  }

  void updateDestinationsearchesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    destinationsearches[index] = updateFn(_destinationsearches[index]);
  }

  void insertAtIndexInDestinationsearches(int index, String value) {
    destinationsearches.insert(index, value);
  }

  String _lastsearch = '';
  String get lastsearch => _lastsearch;
  set lastsearch(String value) {
    _lastsearch = value;
  }

  bool _beach = false;
  bool get beach => _beach;
  set beach(bool value) {
    _beach = value;
  }

  bool _diving = false;
  bool get diving => _diving;
  set diving(bool value) {
    _diving = value;
  }

  bool _skiing = false;
  bool get skiing => _skiing;
  set skiing(bool value) {
    _skiing = value;
  }

  String _category = '';
  String get category => _category;
  set category(String value) {
    _category = value;
  }

  bool _mountain = false;
  bool get mountain => _mountain;
  set mountain(bool value) {
    _mountain = value;
  }

  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  set startdate(DateTime? value) {
    _startdate = value;
    value != null
        ? prefs.setInt('ff_startdate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_startdate');
  }

  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  set enddate(DateTime? value) {
    _enddate = value;
    value != null
        ? prefs.setInt('ff_enddate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_enddate');
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
