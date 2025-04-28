import 'package:fpdart/fpdart.dart';
import '../entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:networking_flutter_dio/core/networking/custom_exception.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<Either<CustomException, List<{{feature_name.pascalCase()}}>>> getAll{{feature_name.pascalCase()}}();
}