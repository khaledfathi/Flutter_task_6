import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/models/user_model.dart';

class MyAccountController {
  Future<void> updateAccount(String id , {String? phone , String? country , String? image})async {
    UserModel().update(
      {
        'phone':phone,
        'country':country,
        'image' : image
      },
      int.parse(id),
    );
    await Auth().refreshCurrentUser(); 
  }
}