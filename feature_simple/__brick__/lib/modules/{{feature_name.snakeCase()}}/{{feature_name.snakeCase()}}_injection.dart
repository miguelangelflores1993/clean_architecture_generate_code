
import 'package:get_it/get_it.dart';
import 'data/datasources/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'data/datasources/{{feature_name.snakeCase()}}_remote_data_source_impl.dart';
import 'data/repositories/{{feature_name.snakeCase()}}_repository_impl.dart';

import 'domain/repository/{{feature_name.snakeCase()}}_repository.dart';
import 'domain/usecases/get_all_{{feature_name.snakeCase()}}_use_case.dart';
import 'domain/usecases/get_by_id_{{feature_name.snakeCase()}}_use_case.dart';
import 'presentation/bloc/{{feature_name.snakeCase()}}_bloc.dart';
import 'presentation/cubit/{{feature_name.snakeCase()}}_cubit.dart';

void init{{feature_name.pascalCase()}}Injection(GetIt sl) {
  // Bloc
  sl.registerFactory(
    () => {{feature_name.pascalCase()}}Bloc(
      getAll{{feature_name.pascalCase()}}UseCase: sl(),
      getById{{feature_name.pascalCase()}}UseCase: sl(),
    ),
  );
  sl.registerFactory(
    () => {{feature_name.pascalCase()}}Cubit(
      getAll{{feature_name.pascalCase()}}UseCase: sl(),
      getById{{feature_name.pascalCase()}}UseCase: sl(),
    ),
  );
  // Use cases
  sl.registerLazySingleton(() => GetAll{{feature_name.pascalCase()}}UseCase(sl()));
  sl.registerLazySingleton(() => GetById{{feature_name.pascalCase()}}UseCase(sl()));

  // Repositories
  sl.registerLazySingleton<{{feature_name.pascalCase()}}Repository>(
    () => {{feature_name.pascalCase()}}RepositoryImpl({{feature_name.camelCase()}}DataSource:sl()),
  );

  // Data sources
  sl.registerLazySingleton<{{feature_name.pascalCase()}}RemoteDataSource>(
    () => {{feature_name.pascalCase()}}RemoteDataSourceImpl(api:sl()),
  );
}