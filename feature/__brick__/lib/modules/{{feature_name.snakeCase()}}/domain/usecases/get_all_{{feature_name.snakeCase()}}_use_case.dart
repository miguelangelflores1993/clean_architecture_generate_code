import 'package:fpdart/fpdart.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/{{feature_name.snakeCase()}}_entity.dart';
import '../repository/{{feature_name.snakeCase()}}_repository.dart';
import 'package:networking_flutter_dio/core/networking/custom_exception.dart';

class GetAll{{feature_name.pascalCase()}}UseCase implements UseCase<List<{{feature_name.pascalCase()}}>, NoParams> {
  GetAll{{feature_name.pascalCase()}}UseCase(this.repository);

  final {{feature_name.pascalCase()}}Repository repository;

  @override
  Future<Either<CustomException, List<{{feature_name.pascalCase()}}>>> call(NoParams params) {
    return repository.getAll{{feature_name.pascalCase()}}();
  }
}