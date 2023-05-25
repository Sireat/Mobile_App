import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'core/network/network_info.dart';
import 'core/util/input_converter.dart';
import 'features/country_code/data/datasourse/country_local_data_source.dart';
import 'features/country_code/data/repositories/country_repository_imp.dart';
import 'features/country_code/data/datasourse/country_remote_data_source.dart';
import 'features/country_code/domain/repositories/country_repository.dart';
import 'features/country_code/domain/usecases/get_country_code_usecase.dart';
import 'features/country_code/presentation/bloc/country_code_bloc.dart';



final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => CountryCodeBloc(getCountryCode: sl()));
  // Use casesee
  sl.registerLazySingleton(() => GetCountryCode(sl(), repository: repository));

  // Repository
  sl.registerLazySingleton<CountryRepository>(
    () => CountryRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()),
  );

  // Data sources
  sl.registerLazySingleton<CountryRemoteDataSource>(
    () => CountryRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<CountryLocalDataSource>(
    () => CountryLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // Core
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());
  sl.registerLazySingleton(() => SharedPreferences.getInstance());
}
