import '../entities/{{feature_name.snakeCase()}}_entity.dart';
import '../repository/{{feature_name.snakeCase()}}_repository.dart';

class GetById{{feature_name.pascalCase()}}UseCase {
  GetById{{feature_name.pascalCase()}}UseCase(this.repository);

  final {{feature_name.pascalCase()}}Repository repository;

  Future<{{feature_name.pascalCase()}}> call() {
    return repository.getById{{feature_name.pascalCase()}}();
  }
}