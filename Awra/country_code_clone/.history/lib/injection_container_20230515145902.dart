import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:country_code_clone/core/network/network_info.dart';
import 'package:country_code_clone/core/util/input_converter.dart';
import 'package:country_code_clone/data/datasources/country_remote_data_source.dart';
import 'package:country_code_clone/data/repositories/country_repository_impl.dart';
import 'package:country_code_clone/domain/repositories/country_repository.dart';
import 'package:country_code_clone/domain/usecases/get_country_code.dart';
import 'package:country_code_clone/presentation/bloc/country_code_bloc.dart';

final sl = GetIt.instance;

void init() {
  // Bloc
  sl.registerFactory(() => CountryCodeBloc(getCountryCode: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetCountryCode(sl()));

  // Repository
  sl.registerLazySingleton<CountryRepository>(() => CountryRepositoryImpl(
        remoteDataSource: sl(),
        networkInfo: sl(),
      ));

  // Data sources
  sl.registerLazySingleton<CountryRemoteDataSource>(() => CountryRemoteDataSourceImpl(client: sl()));

  // Core
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
