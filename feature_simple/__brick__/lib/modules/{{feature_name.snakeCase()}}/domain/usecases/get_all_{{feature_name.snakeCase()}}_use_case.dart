import '../entities/{{feature_name.snakeCase()}}_entity.dart';
import '../repository/{{feature_name.snakeCase()}}_repository.dart';

class GetAll{{feature_name.pascalCase()}}UseCase {
  GetAll{{feature_name.pascalCase()}}UseCase(this.repository);

  final {{feature_name.pascalCase()}}Repository repository;

  Future<List<{{feature_name.pascalCase()}}>> call() {
    return repository.getAll{{feature_name.pascalCase()}}();
  }
}