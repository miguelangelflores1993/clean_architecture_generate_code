import '../datasources/{{feature_name.snakeCase()}}_remote_data_source.dart';
import '../../domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import '../../domain/repository/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}RepositoryImpl({required this.{{feature_name.camelCase()}}DataSource});

  final {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}DataSource;

  @override
  Future<List<{{feature_name.pascalCase()}}>> getAll{{feature_name.pascalCase()}}() async {
    try {
      final result = await {{feature_name.camelCase()}}DataSource.getAll{{feature_name.pascalCase()}}();
      return result;
    }  catch (e) {
     rethrow;
    }
  }

  @override
  Future<{{feature_name.pascalCase()}}> getById{{feature_name.pascalCase()}}() async {
    try {
      final result = await {{feature_name.camelCase()}}DataSource.getById{{feature_name.pascalCase()}}();
      return result;
    }  catch (e) {
      rethrow;
    }
  }
}