import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userID;
  final String name;
  final String email;

  // constructor
  const MyUserEntity({
    required this.userID,
    required this.email,
    required this.name
  });

  // tranforms the object into map
  Map<String, Object?> toDocument(){
    return {
      'userID' : userID,
      'name' : name,
      'email': email,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity (
      userID: doc['userID'],
      name: doc['name'],
      email: doc['email'],
    );
  }


  @override
  List<Object?> get props => [userID, email, name];
}