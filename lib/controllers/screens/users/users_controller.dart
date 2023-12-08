import 'package:task_l5/models/fake_records/fake_records.dart';
import 'package:task_l5/models/user_model.dart';

class UserController {

  Future<List<UserModel>> getAllUsers () async {
    return await UserModel().select(); 
  }

  Future<int> deleteUser(String id)async {
    return await UserModel().delete(id:int.parse(id)); 
  }

  Future<void> deleteAll() async {
    await UserModel().delete();
  }

  Future<void> rebuildUsers ()async{
    await FakeRecords.createFakeUsers(); 
  }
}