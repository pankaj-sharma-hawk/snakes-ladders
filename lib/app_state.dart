import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _rules = prefs.getStringList('ff_rules') ?? _rules;
  }

  late SharedPreferences prefs;

  int dicevalue = 5;

  int WhoseTurn = 0;

  int Acurr = 0;

  int Bcurr = 0;

  int Ccurr = 0;

  int Dcurr = 0;

  List<int> players = [0, 0, 0, 0];

  int numberofPlayers = 4;

  int chance = 0;

  String answer = 'Pankaj';

  List<String> _rules = [
    '1.  Snake-Ladder-Trivia Game is old fashion snake ladder game with a twist of trivia. So if you are going to climb a ladder or a snake will take you down. you only go up to the ladder if you will answer a trivia question and in the case of a snake, if you give the right answer, we will place you in the same place. don\'t you find it interesting.',
    '2.  Minium 2 Players and Maximum 4 Players can play this game.',
    '3.  Score will generate only if all players complete the game.',
    '4.  Player 1 color is Red, Player 2 color is Blue, Player 3 color is Green, and Player 4 color is Yellow.',
    '5. Trivia question will be from different subjects like Science,Geography,Maths and General Knowledge.'
  ];
  List<String> get rules => _rules;
  set rules(List<String> _value) {
    _rules = _value;
    prefs.setStringList('ff_rules', _value);
  }

  void addToRules(String _value) {
    _rules.add(_value);
    prefs.setStringList('ff_rules', _rules);
  }

  void removeFromRules(String _value) {
    _rules.remove(_value);
    prefs.setStringList('ff_rules', _rules);
  }

  bool rewardResult = false;

  List<String> playerImages = [
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/4jrypfswujhx/1p.png',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/wwb8ej0e4q3t/2P.png',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/1hma4g94ooyj/3P.png',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/ho390vyfgi1q/4P.png'
  ];
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
