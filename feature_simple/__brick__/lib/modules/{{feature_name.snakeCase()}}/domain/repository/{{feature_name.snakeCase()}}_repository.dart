import '../entities/{{feature_name.snakeCase()}}_entity.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<List<{{feature_name.pascalCase()}}>> getAll{{feature_name.pascalCase()}}();
  Future<{{feature_name.pascalCase()}}>getById{{feature_name.pascalCase()}}();
}