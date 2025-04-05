import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_all_{{feature_name.snakeCase()}}_use_case.dart';
import '../../domain/usecases/get_by_id_{{feature_name.snakeCase()}}_use_case.dart';
import 'package:equatable/equatable.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit(
    {
    required this.getAll{{feature_name.pascalCase()}}UseCase,
    required this.getById{{feature_name.pascalCase()}}UseCase
    }): super( {{feature_name.pascalCase()}}State());

  Future<void> getAll{{feature_name.pascalCase()}}() async {
    
  }
  Future<void> getById{{feature_name.pascalCase()}}() async {
    
  }
  final GetAll{{feature_name.pascalCase()}}UseCase getAll{{feature_name.pascalCase()}}UseCase;
  final GetById{{feature_name.pascalCase()}}UseCase getById{{feature_name.pascalCase()}}UseCase;
      
}