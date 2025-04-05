import 'package:dartz/dartz.dart';
import '../datasources/{{feature_name.snakeCase()}}_data_source.dart';
import '../../domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import '../../domain/repository/{{feature_name.snakeCase()}}_repository.dart';
import 'package:networking_flutter_dio/core/networking/custom_exception.dart';

class {{feature_name.pascalCase()}}RepositoryImplementation implements {{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}RepositoryImplementation({required this.{{feature_name.camelCase()}}DataSource});

  final {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}DataSource;

  @override
  Future<Either<CustomException, List<{{feature_name.pascalCase()}}>>> getAll{{feature_name.pascalCase()}}() async {
    try {
      final result = await {{feature_name.camelCase()}}DataSource.getAll{{feature_name.pascalCase()}}();
      return Right(result);
    } on CustomException catch (e) {
      return Left(e);
    }
  }
}