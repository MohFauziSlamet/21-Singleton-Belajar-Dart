import 'user.dart';

class Services {
  Future<User> getUserData() async {
    //..Asumsing that we get user data from database and then return it
    return User();
  }
}

class ServicesSingleton {
  // _instance hanya nama field
  static final ServicesSingleton _instance = ServicesSingleton._internal();

  // _internal penambahan tanda underscore membuat constructor tsb menjadi privat
  // supaya tidak kelihatan
  ServicesSingleton._internal();

  // factory adalah methode yang dapat mengembalikan objek yang bertype ServicesSingleton.
  // ketika class dipanggil, yang dipanggil bukan constructornya , tapi factory yang akan muncul
  // dan mengembalikan nilai _instance, yang berisi nilai _internal (si constructor itu sendiri)
  // jadi berapa kalipun kita memanggil objek ServicesSingleton, yang dibuat hanya tetap 1
  factory ServicesSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    //..Asumsing that we get user data from database and then return it
    return User();
  }
}
