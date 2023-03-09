import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class McxtTokenFirebaseUser {
  McxtTokenFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

McxtTokenFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<McxtTokenFirebaseUser> mcxtTokenFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<McxtTokenFirebaseUser>(
      (user) {
        currentUser = McxtTokenFirebaseUser(user);
        return currentUser!;
      },
    );
