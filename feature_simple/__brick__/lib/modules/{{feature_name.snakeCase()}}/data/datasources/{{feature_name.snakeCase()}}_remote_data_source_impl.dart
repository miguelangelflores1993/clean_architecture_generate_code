import '{{feature_name.snakeCase()}}_remote_data_source.dart';
import '../models/{{feature_name.snakeCase()}}_model.dart';
import 'package:networking_flutter_dio/core/networking/api_config.dart';


class {{feature_name.pascalCase()}}RemoteDataSourceImpl extends {{feature_name.pascalCase()}}RemoteDataSource {
  {{feature_name.pascalCase()}}RemoteDataSourceImpl({required this.api});

  final ApiRest api;

  @override
  Future<List<{{feature_name.pascalCase()}}Model>> getAll{{feature_name.pascalCase()}}() async {
    final data = await api.instance.getCollectionData<{{feature_name.pascalCase()}}Model>(
      endpoint: 'localhost:400',
      requiresAuthToken: false,
      converter: {{feature_name.pascalCase()}}Model.fromJson,
    );
    return data;
  }
  @override
  Future<{{feature_name.pascalCase()}}Model> getById{{feature_name.pascalCase()}}() async {
    final data = await api.instance.getDocumentData<{{feature_name.pascalCase()}}Model>(
      endpoint: 'localhost:400',
      requiresAuthToken: false,
      converter: {{feature_name.pascalCase()}}Model.fromJson,
    );
    return data;
  }
}
