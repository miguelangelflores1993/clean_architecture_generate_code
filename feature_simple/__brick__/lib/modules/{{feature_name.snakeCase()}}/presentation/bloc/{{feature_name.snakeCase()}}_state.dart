part of '{{feature_name.snakeCase()}}_bloc.dart';

abstract class {{feature_name.pascalCase()}}State extends Equatable {
  const {{feature_name.pascalCase()}}State({
    required this.{{feature_name.camelCase()}},
  });

  const {{feature_name.pascalCase()}}State.initial()
      : {{feature_name.camelCase()}} = const [];

  final List<{{feature_name.pascalCase()}}> {{feature_name.camelCase()}};

  {{feature_name.pascalCase()}}State copyWith({
    List<{{feature_name.pascalCase()}}> ?{{feature_name.camelCase()}},
  }) {
    return Concrete{{feature_name.pascalCase()}}State(
      {{feature_name.camelCase()}}: {{feature_name.camelCase()}} ?? this.{{feature_name.camelCase()}},
    );
  }

  @override
  List<Object?> get props => [{{feature_name.camelCase()}}];
}

class Concrete{{feature_name.pascalCase()}}State extends {{feature_name.pascalCase()}}State {
  const Concrete{{feature_name.pascalCase()}}State({
    required super.{{feature_name.camelCase()}},
  }) : super();
  
  const Concrete{{feature_name.pascalCase()}}State.initial() : super.initial();
}
