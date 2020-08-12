import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:botnet_detection/models/user.dart';
class DatabaseService{
  
  //collection reference
  final CollectionReference usersCollection =Firestore.instance.collection('users');
  //user list from snapshot
  List<User> _userListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return User(
        name: doc.data['name'] ?? '',
        status: doc.data['status'] ?? '0'

      );
    }).toList();
  }
  //get all users
  Stream<List<User>> get users{
    return usersCollection.snapshots()
    .map(_userListFromSnapshot);
  }
  
}