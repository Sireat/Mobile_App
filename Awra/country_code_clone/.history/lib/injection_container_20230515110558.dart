import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

// ignore: unused_import
import 'core/network/network_info.dart';
// ignore: unused_import
import 'features/country_code/data/repositories/country_repository_imp.dart';
import 'features/country_code/data/datasourse/country_remote_data_source.dart';
import 'features/country_code/domain/repositories/country_repository.dart';
import 'features/country_code/domain/usecases/get_country_code_usecase.dart';
import 'features/country_code/presentation/bloc/country_code_bloc.dart';


final sl = GetIt.instance;

void init() {
  // Register the HTTP client
  sl.registerLazySingleton<http.Client>(() => http.Client());

  // Register the remote data source
  sl.registerLazySingleton<CountryRemoteDataSource>(
    () => CountryRemoteDataSourceImpl(client: sl()),
  );

  // Register the network info
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  // Register the repository
  sl.registerLazySingleton<CountryRepository>(
    () => CountryRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
}