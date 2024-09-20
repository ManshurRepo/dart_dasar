class ValidationException implements Exception {
  String message;

  ValidationException(this.message);
}

class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username tidak boleh kosong");
    } else if (password == "") {
      throw ValidationException("Password tidak boleh kosong");
    } else if (username == "Eko" || password == "eko") {
      throw Exception("Login Gagal");
      
    }
  }
}
