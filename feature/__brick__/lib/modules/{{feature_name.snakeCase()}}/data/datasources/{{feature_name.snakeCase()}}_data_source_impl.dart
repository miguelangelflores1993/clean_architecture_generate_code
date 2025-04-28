import '{{feature_name.snakeCase()}}_data_source.dart';
import '../models/{{feature_name.snakeCase()}}_model.dart';
import 'package:networking_flutter_dio/core/networking/api_config.dart';
import 'package:networking_flutter_dio/core/networking/api_service.dart';
import '../../../../core/usecases/usecase.dart';

class {{feature_name.pascalCase()}}DataSourceImplementation extends {{feature_name.pascalCase()}}RemoteDataSource {
  {{feature_name.pascalCase()}}DataSourceImplementation({required this.api});

  final ApiService api;

  @override
  Future<List<{{feature_name.pascalCase()}}Model>> getAll{{feature_name.pascalCase()}}() async {
    final data = await api.getCollectionData<{{feature_name.pascalCase()}}Model>(
      endpoint: 'localhost:400',
      requiresAuthToken: false,
      converter: {{feature_name.pascalCase()}}Model.fromJson,
    );
    return data;
  }
}
