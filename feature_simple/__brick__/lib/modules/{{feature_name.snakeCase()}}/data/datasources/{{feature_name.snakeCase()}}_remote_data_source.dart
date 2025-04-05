import '../models/{{feature_name.snakeCase()}}_model.dart';
abstract class {{feature_name.pascalCase()}}RemoteDataSource {
  Future<List<{{feature_name.pascalCase()}}Model>> getAll{{feature_name.pascalCase()}}();
  Future<{{feature_name.pascalCase()}}Model> getById{{feature_name.pascalCase()}}();
}