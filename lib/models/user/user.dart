library user;

import 'package:built_collection/built_collection.dart'; // To be used together with BuiltList if JSON contains nested lists

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class UserData implements Built<UserData, UserDataBuilder> {
  User get data;

  BuiltList<User> get users;

  UserData._();
  factory UserData([updates(UserDataBuilder userDataBuilder)]) = _$UserData;
  static Serializer<UserData> get serializer => _$userDataSerializer;
}

abstract class User implements Built<User, UserBuilder> {
  String get email;

  @nullable
  String get username;

  User._();
  factory User([updates(UserBuilder userBuilder)]) = _$User;
  static Serializer<User> get serializer => _$userSerializer;
}
