
import 'package:task_l5/models/abstract/model.dart';

class CategoryModel extends Model<CategoryModel> {
  String? id ; 
  String? name ; 
  CategoryModel({super.tableName = 'categories' ,
    this.id, 
    this.name, 
  }); 

  @override
  List<CategoryModel> createQueryModelList(queryResult) {
    List<CategoryModel> records = [];
    for (var row in queryResult) {
      records.add(CategoryModel(
        id: row['id'].toString(),
        name: row['name'].toString(),
      ));
    }
    return records;
  }
 
}