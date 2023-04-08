import 'package:flutter/foundation.dart';
import 'package:insta_clone/models/user.dart';
import 'package:insta_clone/resources/auth_methods.dart';

//ChangeNotifier
class UserProvider with ChangeNotifier {
  User? _user = User(
    email: "anrz@gmail.com",
    uid: "dfdf",
    photoUrl:
        "https://yt3.googleusercontent.com/ytc/AL5GRJWX0AY6ndjq2F3EcLvu8wYXd_MHCFlUuSqN90hzdQ=s900-c-k-c0x00ffffff-no-rj",
    username: "anrz",
    bio: 'dsfsfsdf',
    followers: ['dfd'],
    following: ['dfdf'],
  );
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!; //getter to access private value _user

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
