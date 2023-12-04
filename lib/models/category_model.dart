
import 'package:task_l5/models/abstract/model.dart';

class CategoryModel extends Model<CategoryModel> {
  String? name ; 
  CategoryModel({super.tableName = 'categories' ,
    this.name, 
  }); 

  @override
  List<CategoryModel> createQueryModelList(queryResult) {
    List<CategoryModel> records = [];
    for (var row in queryResult) {
      records.add(CategoryModel(
        name: row['name'].toString(),
      ));
    }
    return records;
  }
 
}