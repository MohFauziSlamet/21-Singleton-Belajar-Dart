import 'services.dart';
import 'user.dart';

void main(List<String> arguments) async {
  print('Hello world:!');
/*
Singleton
adalah design patern dimana sebuah class hanya bisa dibuat satu objek saja.
 */

  ServicesSingleton servicesSingleton1 = ServicesSingleton();
  ServicesSingleton servicesSingleton2 = ServicesSingleton();
  // User user = await services.getUserData();
  if (servicesSingleton1 == servicesSingleton2) {
    print('sama');
  } else {
    print('beda');
  }
}
