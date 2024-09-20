import 'dart:mirrors';

abstract class CategoryRepository {
  id(int id);
  nama(String nama);
  kategori(String kategori);
}

class Repository extends CategoryRepository{
  final String _name;

  Repository(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;

    var sql = "Select * From $_name where $column = '$value'";

    print(sql);
  }
}
