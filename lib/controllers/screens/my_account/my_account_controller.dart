import 'dart:io';

import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/models/user_model.dart';

class MyAccountController {
  Future<void> updateAccount(String id , {String? phone , String? country , File? image})async {
    Map<String , Object?> data = {
        'phone':phone,
        'country':country,
    };
    image == null  ?  null : data['image'] = image.path; 
    UserModel().update(data, int.parse(id),);
    await Auth().refreshCurrentUser(); 
  }
}