import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

// ignore: unused_import
import 'core/network/network_info.dart';
// ignore: unused_import
import 'core/util/input_converter.dart';
import 'features/country_code/data/repositories/country_repository_imp.dart';
import 'features/country_code/data/datasourse/country_remote_data_source.dart';
import 'features/country_code/domain/repositories/country_repository.dart';
import 'features/country_code/domain/usecases/get_country_code_usecase.dart';
import 'features/country_code/presentation/bloc/country_code_bloc.dart';



final sl = GetIt.instance;

void configureInjection() {
  // Bloc
  sl.registerFactory(() => CountryCBloc(getCountryCode: sl()));

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
