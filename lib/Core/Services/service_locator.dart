import 'package:elmadsarah/Core/Database/api/dio_consumer.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;


final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<http.Client>(http.Client());
  getIt.registerSingleton<HttpConsumer>(HttpConsumer(client: getIt<http.Client>()));

  // getIt.registerSingleton<MyProfileRepoImpl>(
  //   MyProfileRepoImpl(getIt.get<DioConsumer>()),
  // );

}
