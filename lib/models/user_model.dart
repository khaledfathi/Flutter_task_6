
import 'package:task_l5/models/abstract/model.dart';

class UserModel extends Model<UserModel> {
  String? name ; 
  String? email ; 
  String? password; 
  String? cart ; 
  
  UserModel({super.tableName = 'users' ,
    this.name, 
    this.email,
    this.password,
    this.cart,
  }); 

  @override
  List<UserModel> createQueryModelList(queryResult) {
    List<UserModel> records = [];
    for (var row in queryResult) {
      records.add(UserModel(
        name: row['name'].toString(),
        email: row['email'].toString(),
        password: row['password'].toString(),
        cart: row['cart'].toString(),
      ));
    }
    return records;
  }
 
}