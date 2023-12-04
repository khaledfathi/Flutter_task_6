import 'package:task_l5/controllers/services/globals/singleton.dart' as globals;

abstract class Model<T>{
  String tableName ;
  Model({required this.tableName}); 

  List<T> createQueryModelList(var queryResult); 

  Future<List<T>> select({int? id}) async {
    List<T> records = [];
    if (id == null) {
      await globals.db.table(tableName).select().then((queryResult) {
        if (queryResult.isNotEmpty) {
          records = createQueryModelList(queryResult);
        }
      });
    } else {
      await globals.db.table(tableName).select(id: id).then((queryResult) {
        if (queryResult.isNotEmpty) {
          records = createQueryModelList(queryResult);
        }
      });
    }
    return records;
  }

  Future<List<T>> selectWhere(String where) async {
    List<T> records =[];
      await globals.db.table(tableName).selectWhere(where).then((queryResult) {
        if (queryResult.isNotEmpty) {
          records = createQueryModelList(queryResult);
        }
      });
      return records; 
  }

  Future<int> insert(Map<String, Object?> row) async {
    try {
      return globals.db.table(tableName).insert(row); 
    } catch (e) {
     print (e); 
    }
    return 0 ; 
  }

  Future<int> update(Map<String, Object?> row, int id) async {
    try {
     return globals.db.table(tableName).update(row, id); 
    } catch (e) {
      print (e); 
    }
    return 0; 
  }

  Future<int> delete({int? id}) {
    if (id == null){
      return globals.db.table(tableName).delete(); 
    }else {
      return globals.db.table(tableName).delete(id:id); 
    }
  }
}
