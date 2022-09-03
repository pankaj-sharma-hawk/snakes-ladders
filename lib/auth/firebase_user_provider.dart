import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SnakesLaddersFirebaseUser {
  SnakesLaddersFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

SnakesLaddersFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SnakesLaddersFirebaseUser> snakesLaddersFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SnakesLaddersFirebaseUser>(
            (user) => currentUser = SnakesLaddersFirebaseUser(user));
