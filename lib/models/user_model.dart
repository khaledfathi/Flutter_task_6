
import 'package:task_l5/models/abstract/model.dart';

class UserModel extends Model<UserModel> {
  String? id ; 
  String? name ; 
  String? email ; 
  String? password; 
  String? phone;
  String? country; 
  String? image; 
  String? cart ; 
  
  UserModel({super.tableName = 'users' ,
    this.id,
    this.name, 
    this.email,
    this.password,
    this.phone, 
    this.country,
    this.image,
    this.cart,
  }); 

  @override
  List<UserModel> createQueryModelList(List<Map<String, Object?>> queryResult){
    List<UserModel> records = [];
    for (var row in queryResult) {
      records.add(UserModel(
        id: row['id'].toString(),
        name: row['name'].toString(),
        email: row['email'].toString(),
        password: row['password'].toString(),
        phone: row['phone'].toString(),
        country: row['country'].toString(),
        image: row['image'].toString(),
        cart: row['cart'].toString(),
      ));
    }
    return records;
  }
 
}