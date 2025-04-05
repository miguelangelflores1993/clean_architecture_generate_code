import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import '../../domain/usecases/get_all_{{feature_name.snakeCase()}}_use_case.dart';
import '../../domain/usecases/get_by_id_{{feature_name.snakeCase()}}_use_case.dart';

part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc({
      required this.getAll{{feature_name.pascalCase()}}UseCase,
      required this.getById{{feature_name.pascalCase()}}UseCase
    })
      : super(const Concrete{{feature_name.pascalCase()}}State.initial()) {
    on<GetAll{{feature_name.pascalCase()}}Event>((event, emit) async {
      
    });
     on<GetById{{feature_name.pascalCase()}}Event>((event, emit) async {
      
    });
  }

  final GetAll{{feature_name.pascalCase()}}UseCase getAll{{feature_name.pascalCase()}}UseCase;
  final GetById{{feature_name.pascalCase()}}UseCase getById{{feature_name.pascalCase()}}UseCase;
}