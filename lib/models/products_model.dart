
import 'package:task_l5/models/abstract/model.dart';

class ProductModel extends Model<ProductModel> {
  String? name; 
  String? description; 
  String? price; 
  String? sizes; 
  String? colors; 
  String? categoryId; //FK

  ProductModel({super.tableName = 'Products' ,
    this.name,
    this.description,
    this.price,
    this.sizes,
    this.colors,
    this.categoryId
  }); 

  @override
  List<ProductModel> createQueryModelList(queryResult) {
    List<ProductModel> records = [];
    for (var row in queryResult) {
      records.add(ProductModel(
        name: row['name'].toString(),
        description: row['name'].toString(),
        price: row['name'].toString(),
        sizes: row['name'].toString(),
        colors: row['name'].toString(),
        categoryId: row['category_id'].toString(), 
      ));
    }
    return records;
  }
 
}