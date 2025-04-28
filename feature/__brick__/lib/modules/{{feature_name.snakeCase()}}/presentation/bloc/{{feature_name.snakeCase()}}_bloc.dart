import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/enums/form_enum.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import '../../domain/usecases/get_all_{{feature_name.snakeCase()}}_use_case.dart';
import 'package:networking_flutter_dio/core/networking/custom_exception.dart';

part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc({required this.getAll{{feature_name.pascalCase()}}UseCase})
      : super(Concrete{{feature_name.pascalCase()}}State.initial()) {
    on<GetAll{{feature_name.pascalCase()}}Event>((event, emit) async {
      emit(state.copyWith(status: FormStatus.loading));

      final result = await getAll{{feature_name.pascalCase()}}UseCase(NoParams());

      result.fold(
        (error) => emit(state.copyWith(exception: () => error)),
        (response) => emit(state.copyWith(
          {{feature_name.camelCase()}}: response,
          status: FormStatus.submitSuccess,
          exception: () => null,
        )),
      );
    });
  }

  final GetAll{{feature_name.pascalCase()}}UseCase getAll{{feature_name.pascalCase()}}UseCase;
}