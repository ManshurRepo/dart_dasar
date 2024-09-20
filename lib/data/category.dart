class Category {
  int? id;
  String? namaBarang;

  Category(this.id, this.namaBarang);

  bool operator ==(Object other) {
    if (other is Category) {
      if (id != other.id) return false;
      if (namaBarang != other.namaBarang) return false;
      return true;
    } else {
      return false;
    }
  }

  int get hashCode {
    var result = id.hashCode;
    result += namaBarang.hashCode;
    return result;
  }
}
