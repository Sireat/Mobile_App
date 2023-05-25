import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'data/datasources/country_remote_data_source.dart';
import 'data/repositories/country_repository_impl.dart';
import 'domain/repositories/country_repository.dart';
import 'domain/usecases/get_country_code.dart';
import 'presentation/blocs/country_bloc.dart';

final sl = GetIt.instance;

void configureInjection() {
  // Bloc
  sl.registerFactory(() => CountryBloc(getCountryCode: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetCountryCode(repository: sl()));

  // Repository
  sl.registerLazySingleton<CountryRepository>(
    () => CountryRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<CountryRemoteDataSource>(
    () => CountryRemoteDataSourceImpl(client: sl()),
  );

  // External
  sl.registerLazySingleton(() => http.Client());
}
